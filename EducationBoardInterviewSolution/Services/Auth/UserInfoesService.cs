﻿using EducationBoardInterviewSolution.Data.Entity.Auth;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EducationBoardInterviewSolution.Areas.Auth.Models;
using EducationBoardInterviewSolution.Data;
using EducationBoardInterviewSolution.Data.Entity;
using EducationBoardInterviewSolution.Sevices.AuthServices.Interfaces;

namespace EducationBoardInterviewSolution.Services.AuthServices
{
    public class UserInfoesService : IUserInfoes
    {
        private readonly ATMDbContext _context;
        private readonly RoleManager<IdentityRole> roleManager;

        public UserInfoesService(ATMDbContext context, RoleManager<IdentityRole> roleManager)
        {
            _context = context;
            this.roleManager = roleManager;
        }

        public async Task<ApplicationUser> GetUserBasicInfoes(string userName)
        {
            return await _context.Users.Where(x => x.UserName == userName).FirstOrDefaultAsync();
        }

        //public async Task<int> GetMaxUserId()
        //{
        //    var result = await _context.Users.MaxAsync(x =>);
        //    return result;
        //}

        public async Task<IEnumerable<ApplicationUser>> GetAllUser()
        {
            var model = await _context.Users.ToListAsync();

            return model;
        }

        public async Task<ApplicationUser> GetUserInfoByUserEmail(string email)
        {

            var user = await _context.Users.Where(x => x.Email == email).FirstOrDefaultAsync();

            return user;

        }

        public async Task<int> SaveRole(RolesViewModel model)
        {

            IdentityRole role = new IdentityRole();

            role.Name = model.name;

            await roleManager.CreateAsync(role);

            return 1;
        }

        public async Task<IEnumerable<IdentityRole>> GetAllRoles()
        {
            var data = await roleManager.Roles.ToListAsync();

            return data;
        }
        
        public async Task<string> GetRoleIdByUserId(string userId)
        {
            return await _context.UserRoles.Where(x=>x.UserId == userId).Select(x=>x.RoleId).FirstOrDefaultAsync();
        }

    }
}
