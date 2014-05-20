.class final Lcom/tencent/mm/ui/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ca;


# instance fields
.field final synthetic cWC:Landroid/app/ProgressDialog;

.field final synthetic goN:Lcom/tencent/mm/ui/dq;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/dq;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/tencent/mm/ui/ds;->goN:Lcom/tencent/mm/ui/dq;

    iput-object p2, p0, Lcom/tencent/mm/ui/ds;->cWC:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uW()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/mm/ui/ds;->cWC:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/tencent/mm/ui/ds;->cWC:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 266
    :cond_0
    return-void
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/mm/ui/ds;->goN:Lcom/tencent/mm/ui/dq;

    iget-object v0, v0, Lcom/tencent/mm/ui/dq;->goM:Lcom/tencent/mm/ui/RoomInfoDetailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->b(Lcom/tencent/mm/ui/RoomInfoDetailUI;)Z

    move-result v0

    return v0
.end method
