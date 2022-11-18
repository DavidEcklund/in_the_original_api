class ApplicationController < ActionController::API
  GERMAN_ENGLISH_TEXT = [
    [
      "Zwei Wurzelfragen des menschlichen Seelenlebens sind es, nach denen hingeordnet ist alles, was durch dieses Buch besprochen werden soll.",
      "There are two root questions of human soul life toward which everything is oriented that is to be discussed in this book."
    ],
    [
      "Die eine ist, ob es eine Möglichkeit gibt, die menschliche Wesenheit so anzuschauen, daß diese Anschauung sich als Stütze erweist für alles andere, was durch Erleben oder Wissenschaft an den Menschen herankommt, wovon er aber die Empfindung hat, es könne sich nicht selber stützen.",
      "One is whether there is a possibility of viewing the human essentiality in such a way that this view will prove a support for everything else which comes to meet the human being through direct experience or science but of which he has the sense that it cannot support itself - " 
    ],
    [
      "Es könne von Zweifel und kritischem Urteil in den Bereich des Ungewissen getrieben werden.",
      "that it could be driven by doubt and critical judgment into the realm of uncertainty."
    ],
    [
      "Die andere Frage ist die:",
      "The other question is this:"
    ],
    [
      "Darf sich der Mensch als wollendes Wesen die Freiheit zuschreiben, oder ist diese Freiheit eine bloße Illusion, die in ihm entsteht, weil er die Fäden der Notwendigkeit nicht durchschaut, an denen sein Wollen ebenso hängt wie ein Naturgeschehen?",
      "Can man as a willing being attribute freedom to himself, or is this freedom a mere illusion that arises in him because he does not recognize the threads of necessity to which his willing is bound to the same degree as a natural occurrence?"
    ],
    [
      "Nicht ein künstliches Gedankengespinst ruft diese Frage hervor.",
      "No artificial spinning out of thoughts calls forth this question."
    ],
    [
      "Sie tritt ganz naturgemäß in einer bestimmten Verfassung der Seele vor diese hin.",
      "In a particular state of soul, it comes quite naturally before the soul."
    ],
    [
      "Und man kann fühlen, es ginge der Seele etwas ab von dem, was sie sein soll, wenn sie nicht vor die zwei Möglichkeiten: Freiheit oder Notwendigkeit des Wollens, einmal mit einem möglichst großen Frageernst sich gestellt sähe.",
      "And one can feel that something of what the soul ought to be would depart from it if the soul never once found itself standing, with the greatest possible seriousness of inquiry, before the two possibilities: freedom or necessity of the will."
    ],
    [
      "In dieser Schrift soll gezeigt werden, daß die Seelenerlebnisse, welche der Mensch durch die zweite Frage erfahren muß, davon abhängen, welchen Gesichtspunkt er gegenüber der ersten einzunehmen vermag.",
      "It is to be shown in this book that the soul-experiences the human being must undergo through the second question depend upon the standpoint he is able to take up toward the first."
    ],
    [
      "Der Versuch wird gemacht, nachzuweisen, daß es eine Anschauung über die menschliche Wesenheit gibt, welche die übrige Erkenntnis stützen kann; und der weitere, darauf hinzudeuten, daß mit dieser Anschauung für die Idee der Freiheit des Willens eine volle Berechtigung gewonnen wird, wenn nur erst das Seelengebiet gefunden ist, auf dem das freie Wollen sich entfalten kann.",
      "The attempt is made to demonstrate that there is a view of the human essentiality that can support the rest of knowledge – and, further, to point out how with this view full justification for the idea of the freedom of the will is gained provided only that the soul realm has been found in which free willing can unfold."
    ]
   ]

  DEUTSCH_SENTENCES = []
  ENGLISH_SENTENCES = []
  GERMAN_ENGLISH_TEXT.each do |subarray| 
    DEUTSCH_SENTENCES << subarray[0]
    ENGLISH_SENTENCES << subarray[1]
  end

  def hello(first_sentence_array = DEUTSCH_SENTENCES, second_sentence_array = ENGLISH_SENTENCES)
    texts = {
      id: 1,
      sentences: first_sentence_array
    },
    {
      id: 2,
      sentences: second_sentence_array
    }
    render json: texts
  end
end
