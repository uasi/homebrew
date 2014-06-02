require "formula"

class Libmicrohttpd < Formula
  homepage "http://www.gnu.org/software/libmicrohttpd/"
  url "http://ftpmirror.gnu.org/libmicrohttpd/libmicrohttpd-0.9.37.tar.gz"
  mirror "http://ftp.gnu.org/gnu/libmicrohttpd/libmicrohttpd-0.9.37.tar.gz"
  sha1 "20af66ef99ecdbf426828df6256cb9742a5bce59"

  bottle do
    cellar :any
    sha1 "b730126b1d7e41dadf5f14ae156acf223a25ce04" => :mavericks
    sha1 "3741134b6e5559677875a5764c5bfc5791ab003a" => :mountain_lion
    sha1 "aad191d18a6de001ddb4f9410f54ce5df4df387e" => :lion
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make install"
  end
end
