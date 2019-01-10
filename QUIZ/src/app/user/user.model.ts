export interface IUser {
    user_name: string;
    user_age: number;
    user_gender: string;
    user_email: string;
    user_mobile: string;
}


export interface ICountry {
    id: number;
    code: string;
    name: string;
    phonecode: number;
}


export interface IState {
    id: number;
    name: string;
    country_id: number;
}


export interface IBankDetails {
    account_number: string;
    bank_name: string;
    branch: string;
    city: string;
    ifsc: string;
    mobile: string;
    user_name: string;
}
