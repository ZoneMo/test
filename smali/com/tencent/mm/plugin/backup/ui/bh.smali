.class final Lcom/tencent/mm/plugin/backup/ui/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cNH:Lcom/tencent/mm/plugin/backup/ui/bg;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/bg;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/bh;->cNH:Lcom/tencent/mm/plugin/backup/ui/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/bh;->cNH:Lcom/tencent/mm/plugin/backup/ui/bg;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/ui/bg;->cNF:Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->finish()V

    .line 399
    return-void
.end method
