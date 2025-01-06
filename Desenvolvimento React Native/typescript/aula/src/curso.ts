interface Curso {
    readonly id: number;
    nome: string;
    data: Date;
    preco: number;
    promocao: (preco: number) => void;
}

interface qualificacao {
    tecnologia: Curso[];
}

let backend: qualificacao = {
    tecnologia: [
        {
            id: 100,
            nome: 'Java',
            data: new Date(),
            preco: 1000,
            promocao: () => console.log('teste')
        },
        {
            id: 100,
            nome: 'PHP',
            data: new Date(),
            preco: 2500,
            promocao: () => console.log('teste')
        },
    ]
}

function mostrarPromoção(preco: number): void {
    console.log(`Promoção do curso: ${preco}`);
}

const novoCurso: Curso = {
    id: 1,
    nome: 'Java',
    data: new Date(2024, 6, 10),
    preco: 3000,
    promocao: mostrarPromoção,
}

console.log(novoCurso);
novoCurso.promocao(900) 