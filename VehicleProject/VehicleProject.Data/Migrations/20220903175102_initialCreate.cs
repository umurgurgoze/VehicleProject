using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace VehicleProject.Data.Migrations
{
    public partial class initialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Boats",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Color = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Boats", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Buses",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Color = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Buses", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Cars",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NumberOfWheels = table.Column<int>(type: "int", nullable: false),
                    HeadlightStatus = table.Column<bool>(type: "bit", nullable: false),
                    Color = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cars", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Boats",
                columns: new[] { "Id", "Color" },
                values: new object[,]
                {
                    { 1, "RED" },
                    { 2, "BLUE" },
                    { 3, "BLACK" },
                    { 4, "WHITE" }
                });

            migrationBuilder.InsertData(
                table: "Buses",
                columns: new[] { "Id", "Color" },
                values: new object[,]
                {
                    { 1, "RED" },
                    { 2, "BLUE" },
                    { 3, "BLACK" },
                    { 4, "WHITE" }
                });

            migrationBuilder.InsertData(
                table: "Cars",
                columns: new[] { "Id", "Color", "HeadlightStatus", "NumberOfWheels" },
                values: new object[,]
                {
                    { 1, "RED", false, 4 },
                    { 2, "BLUE", false, 4 },
                    { 3, "BLACK", false, 4 },
                    { 4, "WHITE", false, 4 },
                    { 5, "RED", false, 4 },
                    { 6, "BLUE", false, 4 },
                    { 7, "BLACK", false, 4 },
                    { 8, "WHITE", false, 4 }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Boats");

            migrationBuilder.DropTable(
                name: "Buses");

            migrationBuilder.DropTable(
                name: "Cars");
        }
    }
}
