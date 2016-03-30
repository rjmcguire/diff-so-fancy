my $dim_magenta      = "\e[38;5;146m";
my $reset_color      = "\e[0m";
my $bold             = "\e[1m";
my ($file_1,$file_2);
my $last_file_seen = "";
	} elsif ($line =~ /^$ansi_color_regex--- (\w\/)?(.+?)(\e|\t|$)/) {
		$next    =~ /^$ansi_color_regex\+\+\+ (\w\/)?(.+?)(\e|\t|$)/;
		if ($file_2 ne "/dev/null") {
			$last_file_seen = $file_2;
		}
		my $remain       = bleach_text($5);
		print "@ $last_file_seen:$start_line \@${bold}${dim_magenta}${remain}${reset_color}\n";

sub bleach_text {
	my $str = shift();
	$str    =~ s/\e\[\d*(;\d+)*m//mg;

	return $str;
}