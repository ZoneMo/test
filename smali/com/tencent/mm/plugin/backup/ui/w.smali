.class final Lcom/tencent/mm/plugin/backup/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cMD:Lcom/tencent/mm/plugin/backup/ui/v;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/v;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/w;->cMD:Lcom/tencent/mm/plugin/backup/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/w;->cMD:Lcom/tencent/mm/plugin/backup/ui/v;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/ui/v;->cMB:Lcom/tencent/mm/plugin/backup/ui/BakChatRecoveringUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatRecoveringUI;->finish()V

    .line 419
    return-void
.end method
