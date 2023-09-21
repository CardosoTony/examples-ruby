require 'cpf_cnpj'

module Person
  class Juridic
    def initialize(name, cnpj_number)
      @name = name
      @cnpj_number = cnpj_number.to_s
    end

    def check_cnpj
      if CNPJ.valid?(@cnpj_number)
        puts "\nPessoa Jurídica Adicionada!"
        puts 'Nome: ' + @name + ' | CNPJ: ' + format_cnpj(@cnpj_number)
        puts ''
      else
        puts "\nCNPJ inválido!"
        puts ''
      end
    end

    private

    def format_cnpj(cnpj)
      cnpj.gsub(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, '\1.\2.\3/\4-\5')
    end
  end

  class Physical
    def initialize(name, cpf_number)
      @name = capitalize_name(name)
      @cpf_number = cpf_number.to_s
    end

    def check_cpf
      if CPF.valid?(@cpf_number)
        puts "\nPessoa Física Adicionada!"
        puts 'Nome: ' + @name + ' | CPF: ' + format_cpf(@cpf_number)
        puts ''
      else
        puts "\nCPF inválido!"
        puts ''
      end
    end

    private

    def format_cpf(cpf)
      cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
    end
  end
end

def capitalize_name(name)
  names = name.split.map(&:capitalize)
  capitalize_names = names.join(' ')
  return capitalize_names
end

menu = [
  '0. Exit',
  '1. CPF',
  '2. CNPJ'
]

puts "\n#{menu.join("\n")}"

print "\nSelecione uma opção: "
menu_select = gets.chomp

case menu_select
when '0'
  puts "\nAté breve!"
  puts ''
when '1'
  print "\nNome: "
  name = gets.chomp

  print "\nCPF: "
  cpf_number = gets.chomp.to_i

  person = Person::Physical.new(capitalize_name(name), cpf_number)
  person.check_cpf
when '2'
  print "\nNome: "
  name = gets.chomp

  print "\nCNPJ: "
  cnpj_number = gets.chomp.to_i

  person = Person::Juridic.new(capitalize_name(name), cnpj_number)
  person.check_cnpj
end
