type QuizOption = string;

export type UserInfo = {
  id: number;
  location: string;
  name: string;
  gender: string;
  title: string;
  keyword: string;
  description: string;
  fullDescription: string;
  quiz: string;
  options: QuizOption[];
  answer: number;
};

export interface UserState {
  name: string;
  setName: (name: string) => void;
  resetName: () => void;
}