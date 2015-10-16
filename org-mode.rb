class OrgMode < Formula
  homepage 'http://orgmode.org/'
  url 'http://orgmode.org/org-8.3.2.tar.gz'
  sha1 '165cd751f59d3048f02e64271124e423b034ccb1'
  version '8.3.2'

  head 'git://orgmode.org/org-mode.git'

  def install
    system "make", "all"
    # (share+"emacs/site-lisp").install "lisp" => "org"
    # (share+"emacs/site-lisp/org").install "contrib/lisp" => "contrib"
    info.install 'doc/org' => 'org.info'
  end
end
