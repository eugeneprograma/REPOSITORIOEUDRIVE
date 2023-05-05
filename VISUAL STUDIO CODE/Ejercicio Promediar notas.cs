namespace notas
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void botonCalcular_Click(object sender, EventArgs e)
        {
            nota1.Text = "0";
            nota2.Text = "0";
            nota3.Text = "0";
            definitiva.Text = "0";

        }

        private void button2_Click(object sender, EventArgs e)
        {
            double memoria1 = 0;
            double memoria2 = 0;
            double memoria3 = 0;
            double resultado = 0;


            memoria1 = Convert.ToDouble(nota1.Text);
            memoria2 = Convert.ToDouble(nota2.Text);
            memoria3 = Convert.ToDouble(nota3.Text);

            resultado = memoria1 + memoria2 + memoria3;
            resultado = resultado / 3;

            definitiva.Text = Math.Round(resultado, 2).ToString();

        }

        private void nota1_TextChanged(object sender, EventArgs e)
        {
            double valor = 0;
            valor = Convert.ToDouble(nota1.Text);
            if (valor > 5 || valor <=0)
            {
                MessageBox.Show("valor no permitido, menor a 5");
            }
        }
    }
}