class Minilang
  attr_accessor :register, :stack
  attr_reader :commands
  
  def initialize(commands)
    @register = 0
    @stack = []
    @commands = commands
    run_commands
  end
  
  def run_commands
    comm_list = commands.split
    
    comm_list.each do |comm|
      # p comm
      # p register
      # p stack
      if is_num?(comm)
        reg_set(comm.to_i)
      else
        send(comm.downcase.to_sym)
      end
    end
  end
  
  private
  
  def is_num?(str)
    str.to_i.to_s == str
  end
  
  def reg_set(n)
    @register = n
  end
  
  def push
    @stack.push(@register)
  end
  
  def add
    @register += @stack.pop
  end
  
  def sub
    @register -= @stack.pop
  end
  
  def mult
    @register *= @stack.pop
  end
  
  def div
    @register /= @stack.pop
  end
  
  def mod
    @register %= @stack.pop
  end
  
  def pop
    @register = @stack.pop
  end
  
  def print
    puts @register
  end
end

Minilang.new('PRINT')
# 0

Minilang.new('5 PUSH 3 MULT PRINT')
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

Minilang.new('5 PUSH POP PRINT')
# 5

Minilang.new('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

Minilang.new('-3 PUSH 5 SUB PRINT')
# 8

Minilang.new('6 PUSH')
# (nothing printed; no PRINT commands)