class Zouch < Formula
  homepage 'https://github.com/Ryooooooga/zouch'
  version '0.3.6'

  if OS.mac?
    if Hardware::CPU.intel?
      url 'https://github.com/Ryooooooga/zouch/releases/download/v0.3.6/zouch_0.3.6_darwin_amd64.tar.gz'
      sha256 'd59ac6bb1ca3bf84de09a0e0a47c26dcee5c79f54b845bfd05de93f7382bc326'
    elsif Hardware::CPU.arm?
      url 'https://github.com/Ryooooooga/zouch/releases/download/v0.3.6/zouch_0.3.6_darwin_arm64.tar.gz'
      sha256 'ba30e1ee3c4f308470286376b35d991674b02bc6d559bb4701fc4ed43edaf07e'
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url 'https://github.com/Ryooooooga/zouch/releases/download/v0.3.6/zouch_0.3.6_linux_amd64.tar.gz'
      sha256 'b1f9c04a383e98753d47b4338ebe4644d2ea0348beb4e040401222668f9b2178'
    elsif Hardware::CPU.arm?
      url 'https://github.com/Ryooooooga/zouch/releases/download/v0.3.6/zouch_0.3.6_linux_arm64.tar.gz'
      sha256 'edf65373fb17b655008ec45f7d11b3d1b538dfadef03e1fbfb3fad718397ac2a'
    end
  end

  head do
    url 'https://github.com/Ryooooooga/zouch.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make'
    end
    bin.install 'zouch'
  end

  test do
    system "#{bin}/zouch", '--version'
  end
end
