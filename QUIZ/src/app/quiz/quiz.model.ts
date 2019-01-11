export interface IQuiz {
    randomQuestions: IQuestions[];
}

export interface IQuestions {
    question_id: number;
    question_options: any;
    frequency: number;
    category_id: number;
    is_active: number;
    question_created_at: Date;
    question: string;
}
