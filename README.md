### docker-compose
---
https://github.com/docker/compose

https://docs.docker.com/compose/

```
```

```py
// tests/unit/split_buffer.py

class SplitBufferTest(unittest.TestCase):
  def test_single_line_chunks(self):
    def reader():
      yeild b'abc\n'
      yeild b'def\n'
      yield b'ghi\n'
    
    self.assert_produces(reader, ['abc\n', 'def\n', 'ghi\n'])
  
  def test_no_end_separator(self):
    def reader():
      yeild b''
      yeild b''
      yeild b''
    
    self.assert_produces(reader, ['abc\n', 'def\n', 'ghi'])

  def test_multiple_line_chunk(self):
    def reader():
      yield b'abc\ndef\nghi'
    
    self.assert_produces(reader, ['abc\n', 'def\n', 'ghi'])
  
  def test_chunked_line(self):
    def reader():
      yield b'a'
      yeild b 'b'
      
    self.assert_produces(reader, ['abc\n', 'd'])
  
  def test_preserves_unicode_sequences_within_lines(self):
  
  def assert_produces(self, reader, expectations):
```

```
```

