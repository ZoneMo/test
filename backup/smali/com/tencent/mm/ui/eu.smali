.class final Lcom/tencent/mm/ui/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gpl:Lcom/tencent/mm/ui/RoomRightUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/RoomRightUI;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/mm/ui/eu;->gpl:Lcom/tencent/mm/ui/RoomRightUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/mm/ui/eu;->gpl:Lcom/tencent/mm/ui/RoomRightUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/RoomRightUI;->SM()V

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/ui/eu;->gpl:Lcom/tencent/mm/ui/RoomRightUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/RoomRightUI;->finish()V

    .line 168
    const/4 v0, 0x1

    return v0
.end method
