.class final Lcom/tencent/mm/plugin/backup/model/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/ar;


# instance fields
.field final synthetic cKd:Lcom/tencent/mm/plugin/backup/model/h;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/model/h;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/model/i;->cKd:Lcom/tencent/mm/plugin/backup/model/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ve()Z
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gv()V

    .line 281
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/a/c;->a(Ljava/io/File;)Z

    .line 282
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gn()Lcom/tencent/mm/plugin/backup/model/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/am;->Hu()Z

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public final vf()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/i;->cKd:Lcom/tencent/mm/plugin/backup/model/h;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/h;->cKc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 275
    const/4 v0, 0x0

    return v0
.end method
