using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks; 
using OfficeOpenXml;
using WindowsFormsApp1.Model;

namespace WindowsFormsApp1.Util 
{
    public class Excel : IDisposable
    {
        public void GerarExcel(string Nome, string Pasta, string Local, List<Recebimento> Recebimentos, List<Requisicao> Transferencias, List<Requisicao> Consumo, List<Almox> AjustesEntrada, List<Almox> AjustesSaida, List<Requisicao> TransferenciasRealizadas)
        {
            try
            {
                ExcelPackage package = new ExcelPackage();
                ExcelWorkbook workbook = package.Workbook;

                int row = 1;
                int somaRecebimentos = 0;

                //Exporta os Recebimentos
                ExcelWorksheet sheetRecebimentos = workbook.Worksheets.Add("Recebimentos");
                sheetRecebimentos.Cells[row, 1].Value = "Data";
                sheetRecebimentos.Cells[row, 2].Value = "Material";
                sheetRecebimentos.Cells[row, 3].Value = "Marca";
                sheetRecebimentos.Cells[row, 4].Value = "Qtde NF";
                sheetRecebimentos.Cells[row, 5].Value = "Conversão";
                sheetRecebimentos.Cells[row, 6].Value = "Data"; 
                foreach(var r in Recebimentos)
                {
                    row++;
                    sheetRecebimentos.Cells[row, 1].Style.Numberformat.Format = "dd/MM/yyyy";
                    sheetRecebimentos.Cells[row, 1].Value = r.Data;
                    sheetRecebimentos.Cells[row, 2].Value = r.Material;
                    sheetRecebimentos.Cells[row, 3].Value = r.Marca;
                    sheetRecebimentos.Cells[row, 4].Value = r.Qtde;
                    sheetRecebimentos.Cells[row, 5].Value = r.Conversao;
                    sheetRecebimentos.Cells[row, 6].Value = r.QtdeEstoque;
                    somaRecebimentos += r.QtdeEstoque;
                }
                row++; 
                sheetRecebimentos.Cells[row, 6].Value = somaRecebimentos;
                sheetRecebimentos.Cells.AutoFitColumns();

                //Exporta as Transferencias
                row = 1;
                int somaTransferencias = 0;
                ExcelWorksheet sheetTransferencias = workbook.Worksheets.Add("Transferencias Recebidas");
                sheetTransferencias.Cells[row, 1].Value = "Requisição";
                sheetTransferencias.Cells[row, 2].Value = "Data";
                sheetTransferencias.Cells[row, 3].Value = "Material";
                sheetTransferencias.Cells[row, 4].Value = "Qtde";
                sheetTransferencias.Cells[row, 5].Value = "Reposição";
                sheetTransferencias.Cells[row, 6].Value = "Custo Médio";
                foreach(var t in Transferencias)
                {
                    row++;
                    sheetTransferencias.Cells[row, 1].Value = t.ID;
                    sheetTransferencias.Cells[row, 2].Style.Numberformat.Format = "dd/MM/yyyy";
                    sheetTransferencias.Cells[row, 2].Value = t.Data;
                    sheetTransferencias.Cells[row, 3].Value = t.Material;
                    sheetTransferencias.Cells[row, 4].Value = t.Qtde;
                    sheetTransferencias.Cells[row, 5].Value = t.Reposicao;
                    sheetTransferencias.Cells[row, 6].Value = t.CustoMedio;
                    somaTransferencias += t.Qtde;
                }
                row++;
                sheetTransferencias.Cells[row, 4].Value = somaTransferencias;
                sheetTransferencias.Cells.AutoFitColumns();


                //Exporta Ajustes de Entrada
                row = 1;
                int somaAjusteEntrada = 0;
                ExcelWorksheet sheetAjusteEntrada = workbook.Worksheets.Add("Ajuste Entrada"); 
                sheetAjusteEntrada.Cells[row, 1].Value = "ID"; 
                sheetAjusteEntrada.Cells[row, 2].Value = "Data";
                sheetAjusteEntrada.Cells[row, 3].Value = "Material";
                sheetAjusteEntrada.Cells[row, 4].Value = "Qtde";
                sheetAjusteEntrada.Cells[row, 5].Value = "Movimento";
                sheetAjusteEntrada.Cells[row, 6].Value = "Motivo";
                foreach (var e in AjustesEntrada)
                {
                    row++;
                    sheetAjusteEntrada.Cells[row, 1].Value = e.ID;
                    sheetAjusteEntrada.Cells[row, 2].Style.Numberformat.Format = "dd/MM/yyyy";
                    sheetAjusteEntrada.Cells[row, 2].Value = e.Data;
                    sheetAjusteEntrada.Cells[row, 3].Value = e.Material;
                    sheetAjusteEntrada.Cells[row, 4].Value = e.Qtde;
                    sheetAjusteEntrada.Cells[row, 5].Value = e.Movimento;
                    sheetAjusteEntrada.Cells[row, 6].Value = e.Motivo;
                    somaAjusteEntrada += e.Qtde;
                }
                row++;
                sheetAjusteEntrada.Cells[row, 4].Value = somaAjusteEntrada;
                sheetAjusteEntrada.Cells.AutoFitColumns();







                //Exporta as Transferencias para outros Locais
                row = 1;
                int somaTransferenciasRealizadas = 0;
                ExcelWorksheet sheetTransferenciasRealizadas = workbook.Worksheets.Add("Transferencias Realizadas");
                sheetTransferenciasRealizadas.Cells[row, 1].Value = "Requisição";
                sheetTransferenciasRealizadas.Cells[row, 2].Value = "Data";
                sheetTransferenciasRealizadas.Cells[row, 3].Value = "Material";
                sheetTransferenciasRealizadas.Cells[row, 4].Value = "Qtde";
                sheetTransferenciasRealizadas.Cells[row, 5].Value = "Local Destino"; 
                foreach (var t in TransferenciasRealizadas)
                {
                    row++;
                    sheetTransferenciasRealizadas.Cells[row, 1].Value = t.ID;
                    sheetTransferenciasRealizadas.Cells[row, 2].Style.Numberformat.Format = "dd/MM/yyyy";
                    sheetTransferenciasRealizadas.Cells[row, 2].Value = t.Data;
                    sheetTransferenciasRealizadas.Cells[row, 3].Value = t.Material;
                    sheetTransferenciasRealizadas.Cells[row, 4].Value = t.Qtde;
                    sheetTransferenciasRealizadas.Cells[row, 5].Value = t.LocalDestino; 
                    somaTransferenciasRealizadas += t.Qtde;
                }
                row++;
                sheetTransferenciasRealizadas.Cells[row, 4].Value = somaTransferenciasRealizadas;
                sheetTransferenciasRealizadas.Cells.AutoFitColumns();

                //Exporta as req Consumo
                row = 1;
                int somaConsumo = 0;
                ExcelWorksheet sheetConsumo = workbook.Worksheets.Add("Consumo");
                sheetConsumo.Cells[row, 1].Value = "Requisição";
                sheetConsumo.Cells[row, 2].Value = "Data";
                sheetConsumo.Cells[row, 3].Value = "Material";
                sheetConsumo.Cells[row, 4].Value = "Qtde";
                sheetConsumo.Cells[row, 5].Value = "Reposição";
                sheetConsumo.Cells[row, 6].Value = "Custo Médio";
                foreach (var t in Transferencias)
                {
                    row++;
                    sheetConsumo.Cells[row, 1].Value = t.ID;
                    sheetConsumo.Cells[row, 2].Style.Numberformat.Format = "dd/MM/yyyy";
                    sheetConsumo.Cells[row, 2].Value = t.Data;
                    sheetConsumo.Cells[row, 3].Value = t.Material;
                    sheetConsumo.Cells[row, 4].Value = t.Qtde;
                    sheetConsumo.Cells[row, 5].Value = t.Reposicao;
                    sheetConsumo.Cells[row, 6].Value = t.CustoMedio;
                    somaConsumo += t.Qtde;
                }
                row++;
                sheetConsumo.Cells[row, 4].Value = somaConsumo;
                sheetConsumo.Cells.AutoFitColumns();





                //Exporta Ajustes de Saída
                row = 1;
                int somaAjusteSaida = 0;
                ExcelWorksheet sheetAjusteSaida = workbook.Worksheets.Add("Ajuste SAída");
                sheetAjusteSaida.Cells[row, 1].Value = "ID";
                sheetAjusteSaida.Cells[row, 2].Style.Numberformat.Format = "dd/MM/yyyy";
                sheetAjusteSaida.Cells[row, 2].Value = "Data";
                sheetAjusteSaida.Cells[row, 3].Value = "Material";
                sheetAjusteSaida.Cells[row, 4].Value = "Qtde";
                sheetAjusteSaida.Cells[row, 5].Value = "Movimento";
                sheetAjusteSaida.Cells[row, 6].Value = "Motivo";
                foreach (var e in AjustesSaida)
                {
                    row++;
                    sheetAjusteSaida.Cells[row, 1].Value = e.ID;
                    sheetAjusteSaida.Cells[row, 2].Style.Numberformat.Format = "dd/MM/yyyy";
                    sheetAjusteSaida.Cells[row, 2].Value = e.Data;
                    sheetAjusteSaida.Cells[row, 3].Value = e.Material;
                    sheetAjusteSaida.Cells[row, 4].Value = e.Qtde;
                    sheetAjusteSaida.Cells[row, 5].Value = e.Movimento;
                    sheetAjusteSaida.Cells[row, 6].Value = e.Motivo;
                    somaAjusteSaida += e.Qtde;
                }
                row++;
                sheetAjusteSaida.Cells[row, 4].Value = somaAjusteSaida;
                sheetAjusteSaida.Cells.AutoFitColumns();

                ExcelWorksheet sheetResumo = workbook.Worksheets.Add("Resumo");
                sheetResumo.Cells[1, 1].Value = "Recebimentos";
                sheetResumo.Cells[1, 2].Value = somaRecebimentos;

                sheetResumo.Cells[2, 1].Value = "Transferências Recebidas";
                sheetResumo.Cells[2, 2].Value = somaTransferencias;

                sheetResumo.Cells[3, 1].Value = "Ajustes de Entrada";
                sheetResumo.Cells[3, 2].Value = somaAjusteEntrada;

                sheetResumo.Cells[4, 1].Value = "Transferencias a outros locais";
                sheetResumo.Cells[4, 2].Value = somaTransferenciasRealizadas * -1;

                sheetResumo.Cells[5, 1].Value = "Consumo";
                sheetResumo.Cells[5, 2].Value = somaConsumo * -1;

                sheetResumo.Cells[6, 1].Value = "Ajustes de Saída";
                sheetResumo.Cells[6, 2].Value = somaAjusteSaida * -1;

                sheetResumo.Cells[7, 1].Value = "Saldo Final";
                sheetResumo.Cells[7, 2].Value = somaRecebimentos + somaTransferencias + somaAjusteEntrada - somaTransferenciasRealizadas - somaConsumo - somaAjusteSaida;
                sheetResumo.Cells.AutoFitColumns();




                string FileName = $"{Pasta}{Local}-{Nome.Replace("\\", " ").Replace("(", " ").Replace(")", " ").Replace("/", " ").Replace("º", " ")}.xlsx";
                package.SaveAs(new FileInfo(FileName));
                package.Dispose();
            }
            catch (Exception)
            {

                throw;
            }
            

        }

        protected virtual void Dispose(bool disposing)
        {
        }

        public void Dispose()
        {
            // Dispose of unmanaged resources.
            Dispose(true);
            // Suppress finalization.
            GC.SuppressFinalize(this);
        }
    }
}
