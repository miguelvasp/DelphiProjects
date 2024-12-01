using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WindowsFormsApp1.Model;

namespace WindowsFormsApp1.DAL
{
    public class Repository
    {
        private IDbConnection _connection;
        Model.dbContext db = new Model.dbContext();

        public Repository()
        {
            _connection = new SqlConnection("Data Source=MIGUEL-PC\\R2;Initial Catalog=Financeiro;user id=SA;password=45482;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;MultipleActiveResultSets=True");
        }

        public List<Model.MATERIAIS> getMateriais(int? GRupoMaterial)
        {
            var lista = db.MATERIAIS.Where(_ => GRupoMaterial == null || _.GRU_ID == GRupoMaterial).OrderBy(_ => _.MAT_DESC).ToList();
            return lista;
        }

        public List<GrupoMaterial> GetGrupos()
        {
            List<GrupoMaterial> lista = new List<GrupoMaterial>();
            var grupos = db.GRUPO_MATERIAL.OrderBy(_ => _.GRU_DESC).ToList();
            foreach(var g in grupos)
            {
                lista.Add(new GrupoMaterial() { id = g.GRU_ID, nome = g.GRU_DESC });
            }
            return lista;
        }

        public List<Locais> GetLocais()
        {
            List<Locais> lista = new List<Locais>();
            //
            //lista.Add(new Locais() { id = 28, nome = "Laboratório" });
            //lista.Add(new Locais() { id = 17, nome = "Laboratório Refrigerados" });
            //lista.Add(new Locais() { id = 59, nome = "Hospital YES" });

            var locais = db.Local.OrderBy(_ => _.Descricao).ToList();
            foreach(var l in locais)
            {
                lista.Add(new Locais() { id = l.Local_ID, nome = l.Descricao });
            }
            return lista;
        }

        public List<Recebimento> GetRecebimentos(int MatID, int LocalID)
        {
            string sql = "";
            sql += " SELECT ";
            sql += " 	A.Dt_Entrada as Data,";
            sql += " 	M.MAT_DESC as Material, ";
            sql += " 	MR.MARCA_DESC as Marca, ";
            sql += " 	CAST(Qtde AS INT) Qtde,  ";
            sql += " 	CAST(B.CONVERSAO AS INT) Conversao, ";
            sql += " 	CAST(Qtde * B.CONVERSAO AS INT) QtdeEstoque ";
            sql += " FROM Rec_NF A ";
            sql += " INNER JOIN Rec_Item B ON A.Rec_ID = B.Rec_ID";
            sql += " INNER JOIN MATERIAIS M ON B.MAT_ID = M.MAT_ID";
            sql += " INNER JOIN MARCAS MR ON B.Marca_ID = MR.MARCA_ID";
            sql += $" WHERE B.Mat_ID = {MatID}";
            sql += $" AND Local_ID = {LocalID}";
            sql += " ORDER BY A.Dt_Entrada ";

            var result = _connection.Query<Recebimento>(sql,
                new
                {
                }, commandType: CommandType.Text);

            return result.ToList();
        }

        public List<Requisicao> GetTransferencias(int MatID, int LocalID)
        {
            string sql = "";
            sql += "SELECT ";
            sql += "	B.Req_ID ID, ";
            sql += "	a.data Data, ";
            sql += "	MAT_DESC Material, ";
            sql += "	Cast(Qtde as int) Qtde, ";
            sql += "	Cast(REPOSICAO as Decimal(18, 2)) Reposicao, ";
            sql += "	Cast(CUSTO as decimal(18, 2)) CustoMedio ";
            sql += "FROM REQ_CAPA A ";
            sql += "INNER JOIN Req_Item  B ON A.Req_ID = B.Req_ID ";
            sql += "INNER JOIN MATERIAIS M ON B.MAT_ID = M.MAT_ID ";
            sql += $"WHERE B.Mat_ID = {MatID} ";
            sql += $"AND Local_ID = {LocalID} and B.Status = 'F' ";
            sql += "AND tipoConsumo = 'T' ";
            sql += "order by a.Data";
            var result = _connection.Query<Requisicao>(sql,
                new
                {
                }, commandType: CommandType.Text);

            return result.ToList();
        }

        public List<Requisicao> GetTransferenciasRealizadas(int MatID, int LocalID)
        {
            string sql = "";
            sql += " SELECT ";
            sql += " 	C.Req_ID ID, ";
            sql += " 	C.Data, ";
            sql += " 	D.DESCRICAO LocalDestino, ";
            sql += " 	m.mat_desc as Material, ";
            sql += " 	cast(SUM(L.Qtde - ISNULL(DEVOLUCAO, 0)) as int) Qtde ";
            sql += " FROM Req_Capa C  ";
            sql += " INNER JOIN Req_Item I ON C.Req_ID = I.Req_ID ";
            sql += " INNER JOIN Req_Lote L ON I.Req_Item_ID = L.Req_Item_ID ";
            sql += " INNER JOIN LOCAL D ON C.LOCAL_ID = D.Local_ID ";
            sql += " INNER JOIN MATERIAIS M ON L.MAT_ID = m.MAT_ID ";
            sql += $" WHERE L.Mat_ID = {MatID} ";
            sql += $" AND L.Local_ID = {LocalID} ";
            sql += " AND tipoConsumo = 'T' ";
            sql += " GROUP BY C.Req_ID, ";
            sql += " 	C.Data, ";
            sql += " 	D.DESCRICAO, ";
            sql += " 	m.mat_desc  ";
            sql += " order by c.Data ";
            var result = _connection.Query<Requisicao>(sql,
                new
                {
                }, commandType: CommandType.Text);

            return result.ToList();
        }


        public List<Requisicao> GetConsumo(int MatID, int LocalID)
        {
            string sql = "";
            sql += "SELECT ";
            sql += "	B.Req_ID ID, ";
            sql += "	a.data Data, ";
            sql += "	MAT_DESC Material, ";
            sql += "	Cast(Qtde as int) Qtde, ";
            sql += "	Cast(REPOSICAO as Decimal(18, 2)) Reposicao, ";
            sql += "	Cast(CUSTO as decimal(18, 2)) CustoMedio ";
            sql += "FROM REQ_CAPA A ";
            sql += "INNER JOIN Req_Item  B ON A.Req_ID = B.Req_ID ";
            sql += "INNER JOIN MATERIAIS M ON B.MAT_ID = M.MAT_ID ";
            sql += $"WHERE B.Mat_ID = {MatID} ";
            sql += $"AND Local_ID = {LocalID} and B.Status = 'F' ";
            sql += "AND tipoConsumo = 'C' ";
            sql += "order by a.Data";
            var result = _connection.Query<Requisicao>(sql,
                new
                {
                }, commandType: CommandType.Text);

            return result.ToList();
        }


        public List<Almox> GetAjustesEntrada(int MatID, int LocalID)
        {
            string sql = "";
            sql += " SELECT ";
            sql += " 	Almox_ID ID, ";
            sql += " 	DATA Data, ";
            sql += " 	MAT_DESC Material, ";
            sql += " 	CAST(QTDE as int) Qtde,  ";
            sql += " 	Case when Tipo = 'E' then 'Entrada' ";
            sql += " 	when tipo = 'B' then 'Saída' else '' end As Movimento , ";
            sql += " 	MOT_DESC Motivo";
            sql += " FROM";
            sql += " ALMOX ALM ";
            sql += " INNER JOIN MOTIVOS M  ON ALM.Mot_ID = M.MOT_ID";
            sql += " INNER JOIN MATERIAIS MS ON ALM.MAT_ID = MS.MAT_ID";
            sql += $" WHERE  ALM.MAT_ID = {MatID}  AND TIPO = 'E' ";
            sql += $" AND LOCAL_ID = {LocalID}";
            sql += " AND ALM.Mot_ID IS NOT NULL";
            sql += " order by DATA ";
            var result = _connection.Query<Almox>(sql,
                new
                {
                }, commandType: CommandType.Text);

            return result.ToList();
        }

        public List<Almox> GetAjustesSaida(int MatID, int LocalID)
        {
            string sql = "";
            sql += " SELECT ";
            sql += " 	Almox_ID ID, ";
            sql += " 	DATA Data, ";
            sql += " 	MAT_DESC Material, ";
            sql += " 	CAST(QTDE as int) Qtde,  ";
            sql += " 	Case when Tipo = 'E' then 'Entrada' ";
            sql += " 	when tipo = 'B' then 'Saída' else '' end As Movimento , ";
            sql += " 	MOT_DESC Motivo";
            sql += " FROM";
            sql += " ALMOX ALM ";
            sql += " INNER JOIN MOTIVOS M  ON ALM.Mot_ID = M.MOT_ID";
            sql += " INNER JOIN MATERIAIS MS ON ALM.MAT_ID = MS.MAT_ID";
            sql += $" WHERE  ALM.MAT_ID = {MatID}  AND TIPO = 'B' ";
            sql += $" AND LOCAL_ID = {LocalID}";
            sql += " AND ALM.Mot_ID IS NOT NULL";
            sql += " order by DATA ";
            var result = _connection.Query<Almox>(sql,
                new
                {
                }, commandType: CommandType.Text);

            return result.ToList();
        }

    }
}
