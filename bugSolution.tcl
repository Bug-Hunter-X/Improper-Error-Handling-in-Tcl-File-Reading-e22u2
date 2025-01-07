proc read_file {filename} { 
    set fileId 
    set fileContent 
    catch { 
        set fileId [open $filename r] 
        if {$fileId == -1} { 
            return -1 
        } 
        set fileContent [read $fileId] 
        close $fileId 
    } result 
    if {$result != 0} { 
        return -1 
    } 
    return $fileContent 
}

set content [read_file non_existent_file.txt] 
if {$content == -1} { 
    puts "Error reading file" 
} else { 
    puts $content 
} 
