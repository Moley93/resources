QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 25
            },
			['1'] = {
                name = 'Probationary Officer',
                payment = 50
            },
			['2'] = {
                name = 'Officer',
                payment = 75
            },
			['3'] = {
                name = 'Senior Officer',
                payment = 100
            },
            ['4'] = {
                name = 'Corporal',
                payment = 100
            },
			['5'] = {
                name = 'Sergeant',
                payment = 100
            },
			['6'] = {
                name = 'Master Sergeant',
                payment = 100
            },
			['7'] = {
                name = 'Lieutenant',
                payment = 100
            },
            ['8'] = {
                name = 'Captain',
                payment = 100
            },
			['9'] = {
                name = 'Commander',
                payment = 100
            },
			['10'] = {
                name = 'Deputy Chief',
                payment = 100
            },
			['11'] = {
                name = 'Assistant Chief',
                payment = 100
            },
            ['12'] = {
                name = 'Chief',
                payment = 100
            },
			['13'] = {
                name = 'Commissioner',
				isboss = true,
                payment = 100,
                bankAuth = true
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Medical Student',
                payment = 25
            },
			['1'] = {
                name = 'Junior Doctor',
                payment = 50
            },
			['2'] = {
                name = 'Senior Doctor',
                payment = 75
            },
			['3'] = {
                name = 'Senior Surgeon',
                payment = 100
            },
			['4'] = {
                name = 'Medical Director',
				isboss = true,
                payment = 100,
                bankAuth = true
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 25
            },
			['1'] = {
                name = 'House Sales',
                payment = 50
            },
			['2'] = {
                name = 'Business Sales',
                payment = 75
            },
			['3'] = {
                name = 'Broker',
                payment = 100
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100,
                bankAuth = true
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 25
            },
			['1'] = {
                name = 'Driver',
                payment = 50
            },
			['2'] = {
                name = 'Event Driver',
                payment = 75
            },
			['3'] = {
                name = 'Sales',
                payment = 100
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150,
                bankAuth = true
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 25
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 25
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 50
            },
			['2'] = {
                name = 'Business Sales',
                payment = 175
            },
			['3'] = {
                name = 'Finance',
                payment = 100
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100,
                bankAuth = true
            },
        },
	},
    ['r68mech'] = {
		label = 'Route 68 Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 25
            },
			['1'] = {
                name = 'Novice',
                payment = 50
            },
			['2'] = {
                name = 'Experienced',
                payment = 75
            },
			['3'] = {
                name = 'Advanced',
                payment = 100
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100,
                bankAuth = true
            },
        },
	},
    ['ottomech'] = {
		label = 'Otto Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 25
            },
			['1'] = {
                name = 'Novice',
                payment = 50
            },
			['2'] = {
                name = 'Experienced',
                payment = 75
            },
			['3'] = {
                name = 'Advanced',
                payment = 100
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100,
                bankAuth = true
            },
        },
	},
    ['paletomech'] = {
		label = 'Paleto Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 25
            },
			['1'] = {
                name = 'Novice',
                payment = 50
            },
			['2'] = {
                name = 'Experienced',
                payment = 75
            },
			['3'] = {
                name = 'Advanced',
                payment = 100
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100,
                bankAuth = true
            },
        },
	},
    ['eastcustoms'] = {
		label = 'East Customs',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 25
            },
			['1'] = {
                name = 'Novice',
                payment = 50
            },
			['2'] = {
                name = 'Experienced',
                payment = 75
            },
			['3'] = {
                name = 'Advanced',
                payment = 100
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100,
                bankAuth = true
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 100
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 50
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 50
            },
        },
	},
}
