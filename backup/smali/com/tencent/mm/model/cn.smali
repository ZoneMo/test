.class public final Lcom/tencent/mm/model/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cjE:I

.field private cjF:I

.field private cjG:I

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public final cC(I)Lcom/tencent/mm/model/cn;
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/tencent/mm/model/cn;->id:I

    .line 61
    return-object p0
.end method

.method public final cD(I)Lcom/tencent/mm/model/cn;
    .locals 0
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/tencent/mm/model/cn;->cjE:I

    .line 66
    return-object p0
.end method

.method public final cE(I)Lcom/tencent/mm/model/cn;
    .locals 0
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lcom/tencent/mm/model/cn;->cjF:I

    .line 71
    return-object p0
.end method

.method public final cF(I)Lcom/tencent/mm/model/cn;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/tencent/mm/model/cn;->cjG:I

    .line 76
    return-object p0
.end method

.method public final commit()Z
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/tencent/mm/model/cm;->vs()Lcom/tencent/mm/model/cm;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/cm;->a(Lcom/tencent/mm/model/cm;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    iget v1, p0, Lcom/tencent/mm/model/cn;->id:I

    if-lez v1, :cond_0

    .line 82
    const-string v1, "MicroMsg.RegStyleStoragestyle_id"

    iget v2, p0, Lcom/tencent/mm/model/cn;->id:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    :goto_0
    iget v1, p0, Lcom/tencent/mm/model/cn;->cjE:I

    if-lez v1, :cond_1

    .line 88
    const-string v1, "MicroMsg.RegStyleStoragenew_flow"

    iget v2, p0, Lcom/tencent/mm/model/cn;->cjE:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    :goto_1
    iget v1, p0, Lcom/tencent/mm/model/cn;->cjF:I

    if-lez v1, :cond_2

    .line 94
    const-string v1, "MicroMsg.RegStyleStoragehas_password"

    iget v2, p0, Lcom/tencent/mm/model/cn;->cjF:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    :goto_2
    iget v1, p0, Lcom/tencent/mm/model/cn;->cjG:I

    if-lez v1, :cond_3

    .line 100
    const-string v1, "MicroMsg.RegStyleStoragehas_AVATAR"

    iget v2, p0, Lcom/tencent/mm/model/cn;->cjG:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    :goto_3
    const-string v1, "MicroMsg.RegStyleStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/model/cn;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newFlow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/model/cn;->cjE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hasPassword:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/model/cn;->cjF:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hasAvatar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/model/cn;->cjG:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 84
    :cond_0
    const-string v1, "MicroMsg.RegStyleStoragestyle_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 90
    :cond_1
    const-string v1, "MicroMsg.RegStyleStoragenew_flow"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 96
    :cond_2
    const-string v1, "MicroMsg.RegStyleStoragehas_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 102
    :cond_3
    const-string v1, "MicroMsg.RegStyleStoragehas_AVATAR"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method
