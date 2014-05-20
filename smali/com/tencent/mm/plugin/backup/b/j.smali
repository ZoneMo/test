.class final Lcom/tencent/mm/plugin/backup/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cLN:Lcom/tencent/mm/plugin/backup/b/i;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/b/j;->cLN:Lcom/tencent/mm/plugin/backup/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/j;->cLN:Lcom/tencent/mm/plugin/backup/b/i;

    invoke-static {v0}, Lcom/tencent/mm/plugin/backup/b/i;->a(Lcom/tencent/mm/plugin/backup/b/i;)Lcom/tencent/mm/n/n;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/b/j;->cLN:Lcom/tencent/mm/plugin/backup/b/i;

    iget v1, v1, Lcom/tencent/mm/plugin/backup/b/i;->cLz:I

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/b/j;->cLN:Lcom/tencent/mm/plugin/backup/b/i;

    iget v2, v2, Lcom/tencent/mm/plugin/backup/b/i;->cLz:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/b/j;->cLN:Lcom/tencent/mm/plugin/backup/b/i;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/n/n;->a(IILcom/tencent/mm/n/x;)V

    .line 232
    return-void
.end method
