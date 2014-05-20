.class final Lcom/tencent/mm/ui/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ca;


# instance fields
.field final synthetic cWC:Landroid/app/ProgressDialog;

.field final synthetic gpb:Lcom/tencent/mm/ui/dv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/dv;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/tencent/mm/ui/dx;->gpb:Lcom/tencent/mm/ui/dv;

    iput-object p2, p0, Lcom/tencent/mm/ui/dx;->cWC:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uW()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/tencent/mm/ui/dx;->cWC:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/tencent/mm/ui/dx;->cWC:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 964
    :cond_0
    return-void
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/tencent/mm/ui/dx;->gpb:Lcom/tencent/mm/ui/dv;

    iget-object v0, v0, Lcom/tencent/mm/ui/dv;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->j(Lcom/tencent/mm/ui/RoomInfoUI;)Z

    move-result v0

    return v0
.end method
