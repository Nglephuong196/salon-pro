"use client"

import { ResourcePage } from "@/components/resource/resource-page"
import { getColumns } from "./columns"
import { ClientForm } from "./client-form"
import { Client } from "./schema"
import { Card, CardContent } from "@/components/ui/card"
import { Users, UserCheck } from "lucide-react"
import { cn } from "@/lib/utils"

// Mock data
const initialData: Client[] = [
  { id: "1", name: "Nguyễn Văn A", phone: "0901234567", email: "a@gmail.com", lastServiceDate: new Date(2024, 11, 20) },
  { id: "2", name: "Trần Thị B", phone: "0912345678", email: "b@gmail.com", lastServiceDate: new Date(2024, 11, 22) },
  { id: "3", name: "Lê Văn C", phone: "0923456789", email: "c@gmail.com", lastServiceDate: new Date(2024, 11, 18) },
  { id: "4", name: "Phạm Thị D", phone: "0934567890", email: "d@gmail.com" },
]

interface StatCardProps {
  title: string
  value: string
  trend?: "up" | "down" | "neutral"
  trendValue?: string
  icon: React.ElementType
  iconBgColor: string
  iconColor: string
}

function StatCard({ title, value, trend, trendValue, icon: Icon, iconBgColor, iconColor }: StatCardProps) {
  return (
    <Card className="border border-gray-100 shadow-sm">
      <CardContent className="p-4">
        <div className="flex items-center justify-between">
          <div className="space-y-1">
            <p className="text-xs font-medium text-muted-foreground uppercase tracking-wide">{title}</p>
            <div className="flex items-baseline gap-2">
              <span className="text-2xl font-bold">{value}</span>
              {trend && trendValue && (
                <span
                  className={cn(
                    "text-xs font-medium",
                    trend === "up" && "text-green-500",
                    trend === "down" && "text-red-500",
                    trend === "neutral" && "text-gray-500"
                  )}
                >
                  {trend === "up" && "↑"}
                  {trend === "down" && "↓"}
                  {trendValue}
                </span>
              )}
            </div>
          </div>
          <div className={cn("p-2.5 rounded-lg", iconBgColor)}>
            <Icon className={cn("h-5 w-5", iconColor)} />
          </div>
        </div>
      </CardContent>
    </Card>
  )
}

function ClientStatsCards() {
  const totalClients = initialData.length
  const returnRate = 75 // Mock: percentage of customers who return

  return (
    <div className="grid gap-4 grid-cols-1 sm:grid-cols-2">
      <StatCard
        title="Tổng khách hàng"
        value={totalClients.toString()}
        trend="up"
        trendValue="+8%"
        icon={Users}
        iconBgColor="bg-purple-100"
        iconColor="text-purple-600"
      />
      <StatCard
        title="Tỷ lệ quay lại"
        value={`${returnRate}%`}
        trend="up"
        trendValue="+3%"
        icon={UserCheck}
        iconBgColor="bg-green-100"
        iconColor="text-green-600"
      />
    </div>
  )
}

export default function ClientsPage() {
  return (
    <ResourcePage<Client>
      title="Khách hàng"
      initialData={initialData}
      searchKey="name"
      addButtonLabel="Thêm khách hàng"
      getColumns={getColumns}
      FormComponent={ClientForm}
      dialogTitle={(isEditing) => isEditing ? "Sửa khách hàng" : "Thêm khách hàng mới"}
      dialogDescription="Nhập thông tin khách hàng vào form bên dưới."
      statsCards={<ClientStatsCards />}
    />
  )
}
