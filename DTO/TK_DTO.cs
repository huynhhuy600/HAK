namespace DTO
{
    public class TK_DTO
    {
        private int id;
        private float apsuatchuan;
        private float apsuattang;
        private float apsuatgiam;
        private string ktbenngoai;
        private string ktkythuat;
        private int mstem;
        private string ketluan;

        public int Id { get => id; set => id = value; }
        public float Apsuatchuan { get => apsuatchuan; set => apsuatchuan = value; }
        public float Apsuattang { get => apsuattang; set => apsuattang = value; }
        public float Apsuatgiam { get => apsuatgiam; set => apsuatgiam = value; }
        public string Ktbenngoai { get => ktbenngoai; set => ktbenngoai = value; }
        public string Ktkythuat { get => ktkythuat; set => ktkythuat = value; }
        public int Mstem { get => mstem; set => mstem = value; }
        public string Ketluan { get => ketluan; set => ketluan = value; }
    }
}
