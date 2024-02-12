String getGeminiPrompt (String userInput) {
  return "'$userInput' If the input sentence above is positive, say 'positive', and if it's negative, say 'negative'. Result should only be either 'positive' or 'negative', not any other word. Never give me a null value.";
}