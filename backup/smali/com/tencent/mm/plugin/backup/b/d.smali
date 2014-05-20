.class final Lcom/tencent/mm/plugin/backup/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cLG:Lcom/tencent/mm/plugin/backup/b/c;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/b/d;->cLG:Lcom/tencent/mm/plugin/backup/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/d;->cLG:Lcom/tencent/mm/plugin/backup/b/c;

    invoke-static {v0}, Lcom/tencent/mm/plugin/backup/b/c;->a(Lcom/tencent/mm/plugin/backup/b/c;)Lcom/tencent/mm/n/n;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/b/d;->cLG:Lcom/tencent/mm/plugin/backup/b/c;

    iget v1, v1, Lcom/tencent/mm/plugin/backup/b/c;->cLz:I

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/b/d;->cLG:Lcom/tencent/mm/plugin/backup/b/c;

    iget v2, v2, Lcom/tencent/mm/plugin/backup/b/c;->cLz:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/b/d;->cLG:Lcom/tencent/mm/plugin/backup/b/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/n/n;->a(IILcom/tencent/mm/n/x;)V

    .line 208
    return-void
.end method
