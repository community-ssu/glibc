#!/usr/bin/perl
# 
# The most horrible hack to remove all entries relating to gconv modules
# not shipped, so that we get a uncorrupted gconv-modules.cache

while (<STDIN>) 
{
     if (/^alias/) { $aliases[++$#aliases]=$_; }
	 elsif (/^module\W+\S+\W+\S+\W+(\S+)/ )
	 {
	 	if ( -r "$1.so" )
		{ 
			print join("",@aliases);
			print $_;
			@aliases=();
		} 
		else
		{
			@aliases=()
		}
	 }	 
}
