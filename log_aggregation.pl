#!/usr/bin/perl

my $filename="/var/log/nginx/access.log";
open(FILE, "< $filename" )) or die("error :$!");

my $result = {};

while (<FILE>){
    chomp($_);
    my ($remote_addr, $remote_user, $time_local, $request, $status, body_bytes_sent, $http_referer, $request_time, $http_user_agent, $http_x_forwarded_for) = split(/\t+/,$_);
    if(exists($result{$status}) {
        $result{$status}{'cnt'} += 1;
        $result{$status}{'total_time'} += $request_time;
    } else {
        $result{$status}{'cnt'} = 0;
        $result{$status}{'total_time'} = $request_time;
    }
}

foreach my $req (keys $result){
    print "$req: request_count: $req{'cnt'} total_time: $req{'total_time'}\n";
}


