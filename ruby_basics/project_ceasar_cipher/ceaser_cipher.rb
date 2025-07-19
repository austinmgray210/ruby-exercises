def ceasar_cipher(text, shift_by = 5)
  return "First argument must be a string" unless text.is_a?(String)
  return "Second argument must be a number" unless shift_by.is_a?(Numeric)

  alphabet = [[*'A'..'Z'], [*'a'..'z']]

  text.tr alphabet.map(&:join).join, alphabet.flat_map { |s| s.rotate(shift_by) }.join
end
