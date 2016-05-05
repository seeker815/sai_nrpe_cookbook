class Chef
  class Resource
    def hash_to_s hash
      hash.map do |k,v|
        k.to_s + '=' + v.to_s 
      end.join("\n") + "\n"
    end
  end
end