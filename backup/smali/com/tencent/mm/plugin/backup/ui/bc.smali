.class final Lcom/tencent/mm/plugin/backup/ui/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cNG:Lcom/tencent/mm/plugin/backup/ui/bb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/bc;->cNG:Lcom/tencent/mm/plugin/backup/ui/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/mm/plugin/backup/model/l;->g(ZZ)V

    .line 155
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/bc;->cNG:Lcom/tencent/mm/plugin/backup/ui/bb;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/ui/bb;->cNF:Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->e(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    .line 156
    return-void
.end method
