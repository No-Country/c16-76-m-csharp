using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace back.Migrations
{
    public partial class BenefitsSummariesTableAdded : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "BenefitsSummaries",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    IncludesBonusA = table.Column<bool>(type: "bit", nullable: false),
                    BonusA = table.Column<double>(type: "float", nullable: false),
                    IncludesBonusB = table.Column<bool>(type: "bit", nullable: false),
                    BonusB = table.Column<double>(type: "float", nullable: false),
                    IncludesBonusC = table.Column<bool>(type: "bit", nullable: false),
                    BonusC = table.Column<double>(type: "float", nullable: false),
                    Holidays = table.Column<int>(type: "int", nullable: false),
                    HasHealthCare = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LastModifiedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LastModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BenefitsSummaries", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BenefitsSummaries_Profiles_Id",
                        column: x => x.Id,
                        principalTable: "Profiles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BenefitsSummaries");
        }
    }
}
