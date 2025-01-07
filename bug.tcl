proc read_file {filename} { 
    set fileId [open $filename r]
    if {$fileId == -1} { 
        return -1 
    }
    set fileContent [read $fileId]
    close $fileId
    return $fileContent
}

set content [read_file non_existent_file.txt]
if {$content == -1} { 
    puts "Error reading file"
} else { 
    puts $content
}