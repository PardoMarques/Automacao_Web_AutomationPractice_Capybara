# Funcionalidades que podem ser utilizadas no sistema inteiro
class BasePage < SitePrism::Page

    # [Default Scope]
    # O scopeSelect seleciona cards/escopos. Sua utilidade esta ligada aos casos de id's dinamicos que não servem para mapeamentos  (Não utilize ID's Dinâmicos!! ~se possivel)
    # scopePointCSSS     ->  Selecionar um ponto detalhado que tenha um ID/CSSS relevante e único(de preferência)
    # scopeFullAreaCSSS  ->  Escolher uma palavra chave que possa destinguir seu escopo de outros. Lembrando que a palavra deve estar dentro do scopePointCSSS
    # scopeFullAreaCSSS  ->  Trabalhando com as Div's ancestrais do ponto escolhido, encontrar uma que separe bem os escopos e tenha um ID/CSSS relevante
    def scopeSelect(scopePointCSSS, scopeName, scopeFullAreaCSSS)
        nodeScope = page.find(scopePointCSSS, text: scopeName)
        nodeScope = nodeScope.ancestor(scopeFullAreaCSSS)
        return nodeScope
    end

    def useScroll(yValue)
        execute_script %Q{window.scrollBy(0, #{yValue});}
    end
  
end
  