.class final Lcom/tencent/mm/plugin/backup/ui/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cNF:Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/bb;->cNF:Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->pause()V

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/bb;->cNF:Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;

    const v1, 0x7f070361

    new-instance v2, Lcom/tencent/mm/plugin/backup/ui/bc;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/backup/ui/bc;-><init>(Lcom/tencent/mm/plugin/backup/ui/bb;)V

    new-instance v3, Lcom/tencent/mm/plugin/backup/ui/bd;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/backup/ui/bd;-><init>(Lcom/tencent/mm/plugin/backup/ui/bb;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/backup/ui/a;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 166
    return-void
.end method
