﻿// <auto-generated />
using System;
using DynamicSideBar.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace DynamicSideBar.Migrations
{
    [DbContext(typeof(ATMDbContext))]
    [Migration("20210206123059_v_initial")]
    partial class v_initial
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.2.1-servicing-10028")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("DynamicSideBar.Data.Entity.ApplicationUser", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Email")
                        .HasMaxLength(256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasMaxLength(256);

                    b.Property<int?>("accountType");

                    b.Property<DateTime?>("createdAt");

                    b.Property<string>("createdBy")
                        .HasMaxLength(120);

                    b.Property<string>("employeeCode");

                    b.Property<string>("fullName");

                    b.Property<string>("imgUrl");

                    b.Property<bool>("isActive");

                    b.Property<bool>("isDeleted");

                    b.Property<bool>("isVerified");

                    b.Property<DateTime?>("updatedAt");

                    b.Property<string>("updatedBy")
                        .HasMaxLength(120);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("DynamicSideBar.Data.Entity.Auth.NavBand", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime?>("createdAt");

                    b.Property<string>("createdBy")
                        .HasMaxLength(250);

                    b.Property<string>("imgClass")
                        .HasMaxLength(150);

                    b.Property<bool?>("isDelete");

                    b.Property<string>("name")
                        .HasMaxLength(150);

                    b.Property<string>("nameBN")
                        .HasMaxLength(150);

                    b.Property<int?>("navParentId");

                    b.Property<int?>("shortOrder");

                    b.Property<DateTime?>("updatedAt");

                    b.Property<string>("updatedBy")
                        .HasMaxLength(250);

                    b.HasKey("Id");

                    b.HasIndex("navParentId");

                    b.ToTable("NabBands");
                });

            modelBuilder.Entity("DynamicSideBar.Data.Entity.Auth.NavItem", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("action")
                        .HasColumnType("nvarchar(250)");

                    b.Property<string>("activeLi")
                        .HasColumnType("nvarchar(250)");

                    b.Property<string>("area")
                        .HasColumnType("nvarchar(250)");

                    b.Property<string>("controller")
                        .HasColumnType("nvarchar(250)");

                    b.Property<DateTime?>("createdAt");

                    b.Property<string>("createdBy")
                        .HasMaxLength(250);

                    b.Property<int?>("displayOrder");

                    b.Property<string>("imgClass")
                        .HasColumnType("nvarchar(250)");

                    b.Property<bool?>("isDelete");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(250)");

                    b.Property<string>("nameBN")
                        .HasColumnType("nvarchar(250)");

                    b.Property<int?>("navBandId");

                    b.Property<int?>("status");

                    b.Property<DateTime?>("updatedAt");

                    b.Property<string>("updatedBy")
                        .HasMaxLength(250);

                    b.HasKey("Id");

                    b.HasIndex("navBandId");

                    b.ToTable("NavItems");
                });

            modelBuilder.Entity("DynamicSideBar.Data.Entity.Auth.NavModule", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime?>("createdAt");

                    b.Property<string>("createdBy")
                        .HasMaxLength(250);

                    b.Property<string>("imgClass")
                        .HasMaxLength(150);

                    b.Property<bool?>("isDelete");

                    b.Property<string>("name")
                        .HasMaxLength(150);

                    b.Property<string>("nameBN")
                        .HasMaxLength(150);

                    b.Property<int?>("shortOrder");

                    b.Property<DateTime?>("updatedAt");

                    b.Property<string>("updatedBy")
                        .HasMaxLength(250);

                    b.HasKey("Id");

                    b.ToTable("NavModules");
                });

            modelBuilder.Entity("DynamicSideBar.Data.Entity.Auth.NavParent", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime?>("createdAt");

                    b.Property<string>("createdBy")
                        .HasMaxLength(250);

                    b.Property<string>("imgClass")
                        .HasMaxLength(150);

                    b.Property<bool?>("isDelete");

                    b.Property<string>("name")
                        .HasMaxLength(150);

                    b.Property<string>("nameBN")
                        .HasMaxLength(150);

                    b.Property<int?>("navModuleId");

                    b.Property<int?>("shortOrder");

                    b.Property<DateTime?>("updatedAt");

                    b.Property<string>("updatedBy")
                        .HasMaxLength(250);

                    b.HasKey("Id");

                    b.HasIndex("navModuleId");

                    b.ToTable("NavParents");
                });

            modelBuilder.Entity("DynamicSideBar.Data.Entity.Auth.UserLogHistory", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("browserName")
                        .HasMaxLength(250);

                    b.Property<DateTime?>("createdAt");

                    b.Property<string>("createdBy")
                        .HasMaxLength(250);

                    b.Property<string>("ipAddress")
                        .HasMaxLength(250);

                    b.Property<bool?>("isDelete");

                    b.Property<DateTime>("logTime")
                        .HasMaxLength(250);

                    b.Property<string>("pcName")
                        .HasMaxLength(250);

                    b.Property<int?>("status");

                    b.Property<DateTime?>("updatedAt");

                    b.Property<string>("updatedBy")
                        .HasMaxLength(250);

                    b.Property<string>("userId")
                        .HasMaxLength(250);

                    b.HasKey("Id");

                    b.ToTable("UserLogHistories");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("RoleId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("DynamicSideBar.Data.Entity.Auth.NavBand", b =>
                {
                    b.HasOne("DynamicSideBar.Data.Entity.Auth.NavParent", "navParent")
                        .WithMany()
                        .HasForeignKey("navParentId");
                });

            modelBuilder.Entity("DynamicSideBar.Data.Entity.Auth.NavItem", b =>
                {
                    b.HasOne("DynamicSideBar.Data.Entity.Auth.NavBand", "navBand")
                        .WithMany()
                        .HasForeignKey("navBandId");
                });

            modelBuilder.Entity("DynamicSideBar.Data.Entity.Auth.NavParent", b =>
                {
                    b.HasOne("DynamicSideBar.Data.Entity.Auth.NavModule", "navModule")
                        .WithMany()
                        .HasForeignKey("navModuleId");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("DynamicSideBar.Data.Entity.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("DynamicSideBar.Data.Entity.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("DynamicSideBar.Data.Entity.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("DynamicSideBar.Data.Entity.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
