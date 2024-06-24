
User.destroy_all
Post.destroy_all
Comment.destroy_all

users = 10.times.map do |i|
  User.create!(
    email: "user#{i+1}@example.com",
    username: "User #{i+1}",
    password: "password"
  )
end

post_titles = [
  "O Futuro da Construção Sustentável",
  "Tendências Modernas em Arquitetura",
  "Como Escolher os Melhores Materiais de Construção",
  "A Importância da Segurança no Canteiro de Obras",
  "Tecnologias Inovadoras na Construção Civil",
  "Como Reduzir Custos em Projetos de Construção",
  "Construção Verde: Práticas e Benefícios",
  "Gerenciamento de Projetos na Construção Civil",
  "A Evolução dos Métodos Construtivos",
  "Desafios e Oportunidades na Construção Urbana"
]

post_contents = [
  "A construção sustentável está se tornando cada vez mais importante. Com o aumento das preocupações ambientais, arquitetos e engenheiros estão buscando maneiras de reduzir o impacto ambiental de seus projetos. Isso inclui o uso de materiais reciclados, a implementação de sistemas de energia renovável e o design de edifícios que são energeticamente eficientes. Além disso, a construção sustentável pode ajudar a reduzir os custos operacionais a longo prazo, tornando-se uma escolha inteligente tanto para os proprietários quanto para o meio ambiente.",
  "Arquitetura moderna incorpora novas tecnologias e materiais que permitem a criação de designs inovadores e eficientes. Desde o uso de vidro inteligente que pode controlar a quantidade de luz solar que entra em um edifício até a impressão 3D de componentes estruturais, as possibilidades são quase infinitas. Esses avanços não apenas melhoram a funcionalidade e a estética dos edifícios, mas também podem contribuir para a sustentabilidade e a eficiência energética. Além disso, a arquitetura moderna frequentemente enfatiza a conexão com o ambiente natural, integrando espaços verdes e elementos naturais nos projetos urbanos.",
  "Selecionar os materiais de construção certos pode impactar significativamente a durabilidade, a eficiência e o custo de um projeto. Materiais como concreto de alto desempenho, aço reciclado e madeira laminada cruzada estão ganhando popularidade devido às suas propriedades superiores e impacto ambiental reduzido. É importante considerar fatores como a resistência ao fogo, a sustentabilidade, a disponibilidade e o custo ao escolher materiais de construção. Consultar especialistas e realizar testes de qualidade são passos cruciais para garantir que os materiais selecionados atendam às especificações do projeto e contribuam para a longevidade da construção.",
  "A segurança no canteiro de obras deve ser uma prioridade máxima para garantir a proteção dos trabalhadores e a conclusão bem-sucedida do projeto. Implementar protocolos de segurança rigorosos, fornecer treinamento adequado e utilizar equipamentos de proteção individual (EPIs) são medidas essenciais para prevenir acidentes. Além disso, é crucial realizar inspeções regulares e manter uma comunicação aberta entre todos os membros da equipe para identificar e mitigar riscos potenciais. A criação de um ambiente de trabalho seguro não apenas protege os trabalhadores, mas também melhora a produtividade e a moral da equipe.",
  "Tecnologias como BIM (Modelagem de Informação da Construção) e impressão 3D estão revolucionando a construção civil ao permitir um planejamento mais preciso e a criação de componentes complexos com alta eficiência. O BIM facilita a colaboração entre todas as partes envolvidas no projeto, fornecendo uma plataforma integrada para o design, a construção e a manutenção de edifícios. A impressão 3D, por sua vez, permite a fabricação rápida e econômica de peças personalizadas, reduzindo o desperdício de materiais e o tempo de construção. Essas inovações estão transformando a forma como os projetos de construção são concebidos e executados, trazendo benefícios significativos em termos de custo, tempo e sustentabilidade.",
  "Reduzir custos sem comprometer a qualidade é um desafio constante na construção civil. Estratégias eficazes incluem a implementação de técnicas de construção modular, a negociação de melhores preços com fornecedores e a otimização do cronograma do projeto para evitar atrasos. Além disso, o uso de tecnologias avançadas como drones para monitoramento de obras e software de gerenciamento de projetos pode melhorar a eficiência e reduzir custos. Investir em treinamento e desenvolvimento da equipe também é uma maneira eficaz de aumentar a produtividade e minimizar erros, resultando em economias significativas ao longo do ciclo de vida do projeto.",
  "Práticas verdes na construção ajudam a preservar o meio ambiente e podem resultar em economias significativas de custos a longo prazo. Isso inclui o uso de materiais reciclados e sustentáveis, a implementação de sistemas de gestão de resíduos e a incorporação de tecnologias de eficiência energética, como painéis solares e sistemas de coleta de água da chuva. Além disso, projetos de construção verde podem se qualificar para certificações como LEED (Leadership in Energy and Environmental Design), que reconhecem os esforços em sustentabilidade e podem aumentar o valor de mercado do imóvel. Adotar práticas verdes não só beneficia o meio ambiente, mas também pode atrair clientes e investidores que valorizam a responsabilidade ambiental.",
  "Gerenciar projetos de construção envolve coordenação e planejamento cuidadosos para garantir que os objetivos sejam alcançados dentro do prazo e do orçamento. Ferramentas de gerenciamento de projetos, como o Primavera e o Microsoft Project, podem ajudar a rastrear o progresso, alocar recursos e identificar possíveis problemas antes que eles causem atrasos significativos. A comunicação eficaz entre todos os membros da equipe é fundamental para o sucesso do projeto. Isso inclui reuniões regulares, relatórios de progresso e uma plataforma centralizada para a troca de informações. Gerenciar as expectativas dos clientes e garantir a satisfação dos stakeholders também são aspectos cruciais do gerenciamento de projetos na construção civil.",
  "Métodos construtivos evoluíram significativamente ao longo dos anos, com novas técnicas surgindo para aumentar a eficiência e reduzir custos. A construção modular, por exemplo, permite a fabricação de componentes fora do local, que são então transportados e montados no canteiro de obras, reduzindo o tempo de construção e o desperdício de materiais. Técnicas de construção sustentável, como o uso de materiais reciclados e a implementação de sistemas de energia renovável, estão se tornando cada vez mais populares. Além disso, avanços na tecnologia de construção, como a impressão 3D e a automação, estão abrindo novas possibilidades para a inovação no setor. Com a contínua evolução dos métodos construtivos, é provável que veremos ainda mais mudanças e melhorias nos próximos anos.",
  "A construção urbana enfrenta desafios únicos, mas também oferece oportunidades significativas para inovação e crescimento. Questões como a densidade populacional, a infraestrutura envelhecida e a sustentabilidade são preocupações principais em ambientes urbanos. No entanto, essas mesmas questões também podem estimular soluções criativas, como o desenvolvimento de edifícios de uso misto, a revitalização de áreas urbanas e a implementação de sistemas de transporte público eficientes. A colaboração entre governos, desenvolvedores e comunidades é essencial para superar os desafios e aproveitar as oportunidades na construção urbana. Com planejamento e execução cuidadosos, é possível criar cidades que sejam não apenas habitáveis, mas também sustentáveis e resilientes."
]

posts = 30.times.map do |i|
  Post.create!(
    title: post_titles.sample,
    content: post_contents.sample,
    user: users.sample
  )
end

comment_contents = [
  "Ótimo post! Muito informativo.",
  "Concordo com os pontos apresentados.",
  "Isso realmente me fez pensar sobre como abordo meus projetos.",
  "Informações valiosas, obrigado por compartilhar!",
  "A segurança é realmente crucial em qualquer obra.",
  "Interessante, nunca tinha pensado nisso dessa forma.",
  "Obrigado pelas dicas, vou aplicar no meu próximo projeto.",
  "Construção verde é o caminho para o futuro.",
  "Gerenciamento de projetos é sempre um desafio.",
  "Adorei o artigo, muito bem escrito."
]

posts.each do |post|
  10.times do
    Comment.create!(
      content: comment_contents.sample,
      user: users.sample,
      post: post
    )
  end
end

puts "Seed data created successfully!"
