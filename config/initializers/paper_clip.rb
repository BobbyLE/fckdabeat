require "paperclip"

Paperclip.options[:command_path] = 'C:\Program Files (x86)\ImageMagick-6.7.3-Q16'
Paperclip.options[:swallow_stderr] = false
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'