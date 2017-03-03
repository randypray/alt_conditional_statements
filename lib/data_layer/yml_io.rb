require 'yaml'
module DataLayer
  # Does IO for the files
  module YmlIo
    # Read ---
    def read_yml_file_with_keys(yml_file, *keys)
      hash = read_yml_file(yml_file)
      data = 'hash'
      keys.each { |key| data << "[:#{key}]" }
      data = keys.inject('hash') { |a, c| "#{a}[:#{c}]" }
      send(:eval, data)
    end

    def read_yml_file(yml_file)
      read_yml_file_base(append_root_path(yml_file))
    end

    def read_file(file_name)
      read_file_base(append_root_path(file_name))
    end

    # file_name_1 - file name to prepend to
    # data1       - data to put at beginning of file
    # file_name_2 - data to append to file after data1 is written to file
    def prepend_file_to_file(file_name_1, data1, file_name_2)
      File.open(append_root_path(file_name_1), 'w') do |f1|
        f1.puts data1
        File.foreach(append_root_path(file_name_2)) do |f2|
          f1.puts f2
        end
      end
    end

    # Used ONLY when reading outside of project directory
    def read_yml_file_base(yml_file)
      YAML.load(read_file_base(yml_file))
    end

    def read_file_base(file_name)
      File.read(file_name)
    end

    def read_file_into_array(file_name)
      File.readlines(append_root_path(file_name))
    end

    def read_part_of_file(file_name, records_to_read)
      file_data = ''
      File.foreach(file_name).with_index do |line, line_num|
        return file_data if line_num >= records_to_read
        file_data << line
      end
    end

    def read_file_one_line_at_a_time(file_name)
      File.open(file_name, 'r').each_line do |line|
        yield(line)
      end
    end

    # Write ---
    def write_yml_file(file_name, hash)
      write_yml_file_base(append_root_path(file_name), hash)
    end

    # If write_type = 'w' writes and overwrites file
    # if write_type = 'a' writes and appends to file
    def write_file(file_name, data, write_type = 'w')
      write_file_base(append_root_path(file_name), data, write_type)
    end

    def write_yml_file_base(file_name, hash)
      write_file_base(file_name, YAML.dump(hash))
    end

    def write_file_base(file_name, data, write_type = 'w')
      File.open(file_name, write_type) { |f| f.write(data) }
    end

    # Delete ---
    def delete_file(yml_file)
      file_to_delete = append_root_path(yml_file)
      File.exists?(file_to_delete) ? delete_file_base(file_to_delete) : puts("File does not exist #{file_to_delete}")
    end

    def delete_file_base(file_name)
      File.delete(file_name)
    end

    def delete_dir(dir_name)
      dir_to_delete = append_root_path(dir_name)
      File.exists?(dir_to_delete) ? delete_dir_base(dir_to_delete) : puts("Dir does not exist #{dir_to_delete}")
    end

    private
    # This is a dangerous method because it will delete directories that are not empty.  So this is called in
    # delete_dir method with the root directory appended to the dir_name so you cannot delete directories outside of
    # this project.
    def delete_dir_base(dir_name)
      FileUtils.remove_dir(dir_name)
    end

    public

    # Misc ---
    def file_exists?(file_name)
      File.exist?(append_root_path(file_name))
    end

    def project_root_path
      File.expand_path('../../../', __FILE__)
    end

    def append_root_path(path)
      "#{project_root_path}/#{path}"
    end
  end
end
