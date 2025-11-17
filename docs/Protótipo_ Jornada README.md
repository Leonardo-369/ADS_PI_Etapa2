# Fluxograma Interativo - Sistema de Cadastro Acadêmico

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![React](https://img.shields.io/badge/React-18.x-61dafb.svg)
![TypeScript](https://img.shields.io/badge/TypeScript-5.x-3178c6.svg)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-4.0-38bdf8.svg)

## Sobre o Projeto

Sistema interativo de documentação de processos de cadastro em um ambiente acadêmico, desenvolvido com React e Tailwind CSS. O projeto apresenta fluxogramas visuais e expansíveis que documentam quatro modalidades principais de cadastro, incluindo validações, cenários alternativos, pré-condições e pós-condições.

### Funcionalidades Principais

- **Fluxogramas Interativos**: Cards expansíveis com detalhes completos de cada etapa
- **4 Modalidades de Cadastro**:
  - Cadastro de Aluno (inclui Pessoa Física via `<<include>>`)
  - Cadastro de Professor (inclui Pessoa Física via `<<include>>`)
  - Cadastro de Fornecedor (inclui Pessoa Jurídica via `<<include>>`)
  - Cadastro de Pessoa Jurídica
-  **Filtros Dinâmicos**: Visualize fluxos individuais ou todos simultaneamente
- **Design Minimalista**: Interface limpa com código de cores por módulo
- **Responsivo**: Adaptável para diferentes tamanhos de tela
- **Cenários Alternativos**: Documentação completa de casos de erro e exceções

## Modalidades de Cadastro

### Cadastro de Aluno (6 etapas)
- **Cor**: Roxo/Purple
- **Relação**: `<<include>>` Cadastro de Pessoa Física
- **Pré-condição**: Usuário autenticado e autorizado no módulo acadêmico
- **Pós-condição**: Aluno vinculado a disciplinas, notas e históricos

**Cenários Alternativos**:
- Matrícula duplicada → Sistema bloqueia operação
- Curso inexistente/inativo → Rejeita até atualização
- CPF inválido → Solicita correção

### Cadastro de Professor (6 etapas)
- **Cor**: Índigo/Indigo
- **Relação**: `<<include>>` Cadastro de Pessoa Física
- **Pré-condição**: Usuário com perfil acadêmico/administrativo
- **Pós-condição**: Professor associado a cursos e disciplinas

**Cenários Alternativos**:
- Professor já cadastrado → Oferece atualização
- Formação inválida/não reconhecida → Bloqueia cadastro
- CPF inválido → Solicita correção

### Cadastro de Fornecedor (6 etapas)
- **Cor**: Teal/Azul-esverdeado
- **Relação**: `<<include>>` Cadastro de Pessoa Jurídica
- **Pré-condição**: Usuário com perfil administrativo
- **Pós-condição**: Fornecedor disponível para contratos e processos de compra

**Cenários Alternativos**:
- Fornecedor já existente → Sugere atualização
- CNPJ inválido → Bloqueia até correção
- Área de fornecimento não especificada → Exige preenchimento

### Cadastro de Pessoa Jurídica (5 etapas)
- **Cor**: Laranja/Orange
- **Pós-condição**: Empresa vinculada a contratos e projetos

**Cenários Alternativos**:
- CNPJ inválido/já cadastrado → Rejeita cadastro
- Formato incorreto → Exibe erro de validação
- Campos obrigatórios vazios → Mensagens específicas

## Tecnologias Utilizadas

- **React 18.x** - Biblioteca JavaScript para interfaces
- **TypeScript 5.x** - Superset tipado do JavaScript
- **Tailwind CSS 4.0** - Framework CSS utilitário
- **Lucide React** - Biblioteca de ícones
- **Vite** - Build tool e servidor de desenvolvimento

## Estrutura do Projeto

```
├── App.tsx                          # Componente principal
├── components/
│   ├── FlowChart.tsx                # Componente do fluxograma interativo
│   ├── ContactForm.tsx              # Formulário de contato
│   ├── Gallery.tsx                  # Galeria de imagens
│   ├── figma/
│   │   └── ImageWithFallback.tsx   # Componente de imagem com fallback
│   └── ui/                          # Componentes UI reutilizáveis
├── styles/
│   └── globals.css                  # Estilos globais e tokens CSS
└── README.md                        # Documentação do projeto
```

## Instalação e Execução

### Pré-requisitos

- Node.js 18.x ou superior
- npm ou yarn

### Passos para Instalação

1. **Clone o repositório**
```bash
git clone https://github.com/seu-usuario/fluxograma-cadastro-academico.git
cd fluxograma-cadastro-academico
```

2. **Instale as dependências**
```bash
npm install
# ou
yarn install
```

3. **Execute o projeto em modo de desenvolvimento**
```bash
npm run dev
# ou
yarn dev
```

4. **Acesse no navegador**
```
http://localhost:5173
```

### Build para Produção

```bash
npm run build
# ou
yarn build
```

Os arquivos otimizados estarão na pasta `dist/`.

## Como Usar

1. **Visualização Geral**: Ao carregar a página, todos os fluxos são exibidos simultaneamente
2. **Filtrar Fluxos**: Use os botões no topo para filtrar por modalidade específica
3. **Expandir Etapas**: Clique em qualquer card para ver detalhes completos:
   - Ações do usuário
   - Ações do sistema
   - Pontos de atenção
   - Pré-condições
   - Pós-condições
   - Relações `<<include>>`
4. **Cenários Alternativos**: Veja todos os casos de erro na seção inferior

## Paleta de Cores

| Módulo | Cor | Código Tailwind |
|--------|-----|-----------------|
| Início | Azul | `blue-600` |
| Aluno | Roxo | `purple-600` |
| Professor | Índigo | `indigo-600` |
| Fornecedor | Teal | `teal-600` |
| Pessoa Jurídica | Laranja | `orange-600` |
| Conclusão | Verde Esmeralda | `emerald-600` |
| Alertas | Âmbar | `amber-600` |
| Erros | Vermelho | `red-600` |

## Personalização

### Adicionar Novo Módulo

1. Crie o array de steps em `/components/FlowChart.tsx`:
```typescript
const novoModuloSteps: FlowStep[] = [
  {
    id: 'novo-etapa',
    stage: 'Nome da Etapa',
    stepNumber: '2',
    userActions: 'Ação do usuário',
    systemActions: ['Ação 1', 'Ação 2'],
    attentionPoints: 'Pontos de atenção',
    icon: IconName,
    color: 'novacor',
    type: 'novomodulo',
    preCondition: 'Pré-condição',
    postCondition: 'Pós-condição'
  }
];
```

2. Adicione a nova cor no método `getColorClasses()`
3. Adicione o filtro no componente
4. Renderize o fluxo na seção de fluxos paralelos

## Casos de Uso Documentados

O sistema documenta completamente os seguintes casos de uso segundo padrões UML:

- ✅ Cadastro de Aluno
- ✅ Cadastro de Professor
- ✅ Cadastro de Fornecedor
- ✅ Cadastro de Pessoa Física (via `<<include>>`)
- ✅ Cadastro de Pessoa Jurídica (via `<<include>>` e standalone)

Cada caso de uso inclui:
- Cenário principal (fluxo feliz)
- Cenários alternativos (tratamento de erros)
- Pré-condições
- Pós-condições
- Relações entre casos de uso

## Contribuindo

Contribuições são bem-vindas! Para contribuir:

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFuncionalidade`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/NovaFuncionalidade`)
5. Abra um Pull Request

### Guidelines de Contribuição

- Mantenha a consistência do código
- Adicione comentários quando necessário
- Teste suas alterações
- Atualize a documentação se necessário


tailwindcss.com/)
- [Documentação TypeScript](https://www.typescriptlang.org/)
- [Lucide Icons](https://lucide.dev/)
