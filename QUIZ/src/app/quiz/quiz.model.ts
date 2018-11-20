export interface IQuiz {
    randomQuestions: IQuestions[];
}

export interface IQuestions {
    question_id: number;
    question_options: any;
    correct_answer_index: number;
    category_id: number;
    is_active: number;
    question_created_at: Date;
    question: string;
}