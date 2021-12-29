<?php

$manifestfile=file_get_contents("./manifest.json");

$manifestarray=json_decode($manifestfile);

// Hier muss eine Leerzeile kommen, sonst funktionier die Modliste nicht
print "### Modlist\n";
print "\n";
print "| Modname | Summary | Author | \n";
print "| ------- | ------- | ------ | \n";
# print_r($manifestarray);
foreach ($manifestarray->files as $k => $v)
{
    $projectid=$v->projectID;
    $fileid=$v->fileID;

    $projectjson=json_decode(file_get_contents("https://addons-ecs.forgesvc.net/api/v2/addon/".$projectid));

    $thisauthor=[];
    foreach( $projectjson->authors as $k => $v)
    {
        $thisauthor[]=$v->name;
    }
    $modname=$projectjson->name;
    $websiteUrl=$projectjson->websiteUrl;
    $summary=$projectjson->summary;
    print "| [".$modname."](".$websiteUrl.") | ";
    print $summary." | ";
    print implode(", ", $thisauthor);
    print " |\n";
}
