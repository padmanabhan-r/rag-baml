class Document {
  title string
  content string
}

function AnswerQuestion(question: string, documents: Document[]) -> string {
  client "openai/gpt-4"

  prompt #"
    You are an AI assistant. Use the provided documents to answer the question.

    {% for doc in documents %}
    Document Title: {{ doc.title }}
    Content: {{ doc.content }}
    {% endfor %}

    Question: {{ question }}
    Answer:
  "#
}
