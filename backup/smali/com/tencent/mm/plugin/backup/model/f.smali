.class final Lcom/tencent/mm/plugin/backup/model/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/ar;


# instance fields
.field final synthetic cJZ:Lcom/tencent/mm/plugin/backup/model/j;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/model/j;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/model/f;->cJZ:Lcom/tencent/mm/plugin/backup/model/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ve()Z
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gq()V

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/f;->cJZ:Lcom/tencent/mm/plugin/backup/model/j;

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->yE()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/plugin/backup/model/j;->cKe:Z

    .line 211
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/backup/model/af;->iB(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public final vf()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/f;->cJZ:Lcom/tencent/mm/plugin/backup/model/j;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/j;->run()V

    .line 203
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gu()I

    .line 204
    const/4 v0, 0x0

    return v0
.end method
