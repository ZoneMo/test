.class final Lcom/tencent/mm/plugin/backup/ui/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cNI:Lcom/tencent/mm/plugin/backup/ui/bi;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/bj;->cNI:Lcom/tencent/mm/plugin/backup/ui/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/bj;->cNI:Lcom/tencent/mm/plugin/backup/ui/bi;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/ui/bi;->cNF:Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->finish()V

    .line 489
    return-void
.end method
