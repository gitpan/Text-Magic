use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Text::Magic',
    'VERSION_FROM'	=> 'lib/Text/Magic.pm',
    'PREREQ_PM'		=> {},
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/Text/Magic.pm',
       AUTHOR     => 'Denis Petrov <denispetrov@yahoo.com>') : ()),
);
