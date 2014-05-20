.class public Lcom/tencent/mm/model/br;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ciU:Lcom/tencent/mm/model/br;


# instance fields
.field public ciT:Lcom/tencent/mm/model/bu;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArraySize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 216
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private static dv(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    const-string v2, "banner"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ArraySize"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 222
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 223
    :goto_0
    if-ge v0, v3, :cond_0

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-object v4
.end method

.method public static uP()Lcom/tencent/mm/model/br;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/tencent/mm/model/br;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/tencent/mm/model/br;->ciU:Lcom/tencent/mm/model/br;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/tencent/mm/model/br;

    invoke-direct {v0}, Lcom/tencent/mm/model/br;-><init>()V

    sput-object v0, Lcom/tencent/mm/model/br;->ciU:Lcom/tencent/mm/model/br;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    sget-object v0, Lcom/tencent/mm/model/br;->ciU:Lcom/tencent/mm/model/br;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static uQ()Lcom/tencent/mm/platformtools/ab;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 115
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    const-string v2, "banner"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    const-string v2, "CurrentType"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 117
    const-string v3, "CurrentShowType"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 118
    const-string v4, "CurrentData"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    if-eq v2, v6, :cond_2

    .line 121
    sget-object v0, Lcom/tencent/mm/model/bs;->ciV:[I

    invoke-static {v2}, Lcom/tencent/mm/platformtools/f;->eL(I)Lcom/tencent/mm/platformtools/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/platformtools/f;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :pswitch_0
    new-instance v0, Lcom/tencent/mm/platformtools/ac;

    invoke-direct {v0}, Lcom/tencent/mm/platformtools/ac;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/platformtools/ac;->eO(I)Lcom/tencent/mm/platformtools/ac;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/platformtools/ac;->eP(I)Lcom/tencent/mm/platformtools/ac;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/platformtools/ac;->hO(Ljava/lang/String;)Lcom/tencent/mm/platformtools/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/ac;->FA()Lcom/tencent/mm/platformtools/ab;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 123
    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/model/br;->uR()Lcom/tencent/mm/model/bt;

    move-result-object v0

    .line 124
    sget-object v5, Lcom/tencent/mm/model/bt;->ciZ:Lcom/tencent/mm/model/bt;

    if-eq v0, v5, :cond_1

    sget-object v5, Lcom/tencent/mm/model/bt;->cja:Lcom/tencent/mm/model/bt;

    if-ne v0, v5, :cond_0

    .line 125
    :cond_1
    const-string v0, "MicorMsg.MainFrameBannerStorage"

    const-string v2, "already Bind the Mobile"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 126
    goto :goto_0

    .line 130
    :pswitch_2
    invoke-static {}, Lcom/tencent/mm/m/af;->wl()Lcom/tencent/mm/m/af;

    invoke-static {}, Lcom/tencent/mm/m/af;->wp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "MicorMsg.MainFrameBannerStorage"

    const-string v2, "avatar already existed"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 138
    :pswitch_3
    invoke-static {}, Lcom/tencent/mm/model/br;->uR()Lcom/tencent/mm/model/bt;

    move-result-object v0

    sget-object v5, Lcom/tencent/mm/model/bt;->ciZ:Lcom/tencent/mm/model/bt;

    if-ne v0, v5, :cond_0

    .line 139
    const-string v0, "MicorMsg.MainFrameBannerStorage"

    const-string v2, "already upload the contacts"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 144
    :pswitch_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v5, 0x33007

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    const-string v0, "MicorMsg.MainFrameBannerStorage"

    const-string v2, "already bind Google Account"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 147
    goto :goto_0

    :pswitch_5
    move-object v0, v1

    .line 152
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 162
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static uR()Lcom/tencent/mm/model/bt;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 235
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x1001

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v3, 0x6

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/tencent/mm/model/v;->tG()Z

    move-result v3

    .line 240
    const-string v4, "MicorMsg.MainFrameBannerStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isUpload "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    move-object v0, v2

    .line 245
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    move-object v1, v2

    .line 248
    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 249
    sget-object v0, Lcom/tencent/mm/model/bt;->ciX:Lcom/tencent/mm/model/bt;

    .line 262
    :goto_0
    return-object v0

    .line 251
    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 252
    sget-object v0, Lcom/tencent/mm/model/bt;->ciY:Lcom/tencent/mm/model/bt;

    goto :goto_0

    .line 255
    :cond_5
    if-eqz v3, :cond_6

    .line 256
    sget-object v0, Lcom/tencent/mm/model/bt;->ciZ:Lcom/tencent/mm/model/bt;

    goto :goto_0

    .line 258
    :cond_6
    sget-object v0, Lcom/tencent/mm/model/bt;->cja:Lcom/tencent/mm/model/bt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/mm/model/bt;->ciX:Lcom/tencent/mm/model/bt;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/model/bu;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/mm/model/br;->ciT:Lcom/tencent/mm/model/bu;

    .line 71
    return-void
.end method

.method public final a(Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/tencent/mm/model/bs;->ciW:[I

    invoke-virtual {p2}, Lcom/tencent/mm/platformtools/e;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/model/br;->ciT:Lcom/tencent/mm/model/bu;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/model/br;->ciT:Lcom/tencent/mm/model/bu;

    invoke-interface {v0}, Lcom/tencent/mm/model/bu;->tf()V

    .line 198
    :cond_0
    return-void

    .line 169
    :pswitch_0
    const-string v1, "CurrentType"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentShowType"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentData"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 176
    :pswitch_1
    const-string v1, "CurrentType"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentShowType"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentData"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    const-string v0, "HistoryInfo"

    invoke-static {v0}, Lcom/tencent/mm/model/br;->dv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/tencent/mm/platformtools/f;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/tencent/mm/platformtools/f;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    const-string v1, "HistoryInfo"

    invoke-static {v1, v0}, Lcom/tencent/mm/model/br;->b(Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mm/platformtools/ab;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v2, p1, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    sget-object v3, Lcom/tencent/mm/platformtools/f;->cGl:Lcom/tencent/mm/platformtools/f;

    if-ne v2, v3, :cond_3

    .line 78
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    const-string v2, "banner"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/model/br;->ciT:Lcom/tencent/mm/model/bu;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/model/br;->ciT:Lcom/tencent/mm/model/bu;

    invoke-interface {v0}, Lcom/tencent/mm/model/bu;->tf()V

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_3
    iget-object v2, p1, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    sget-object v3, Lcom/tencent/mm/platformtools/f;->cGm:Lcom/tencent/mm/platformtools/f;

    if-eq v2, v3, :cond_0

    .line 88
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    const-string v3, "banner"

    invoke-virtual {v2, v3}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/tencent/mm/model/br;->uQ()Lcom/tencent/mm/platformtools/ab;

    move-result-object v3

    .line 91
    const-string v4, "HistoryInfo"

    invoke-static {v4}, Lcom/tencent/mm/model/br;->dv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    invoke-virtual {v5}, Lcom/tencent/mm/platformtools/f;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    .line 92
    :cond_4
    if-eqz v3, :cond_6

    iget-object v1, v3, Lcom/tencent/mm/platformtools/ab;->cGP:Lcom/tencent/mm/platformtools/e;

    sget-object v4, Lcom/tencent/mm/platformtools/e;->cGc:Lcom/tencent/mm/platformtools/e;

    if-ne v1, v4, :cond_6

    .line 93
    const-string v1, "HistoryInfo"

    invoke-static {v1}, Lcom/tencent/mm/model/br;->dv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 94
    iget-object v4, v3, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    invoke-virtual {v4}, Lcom/tencent/mm/platformtools/f;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 95
    iget-object v3, v3, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    invoke-virtual {v3}, Lcom/tencent/mm/platformtools/f;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_5
    const-string v3, "HistoryInfo"

    invoke-static {v3, v1}, Lcom/tencent/mm/model/br;->b(Ljava/lang/String;Ljava/util/List;)Z

    .line 99
    :cond_6
    if-eqz v0, :cond_7

    .line 100
    const-string v1, "CurrentType"

    iget-object v3, p1, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    invoke-virtual {v3}, Lcom/tencent/mm/platformtools/f;->getValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CurrentShowType"

    iget-object v3, p1, Lcom/tencent/mm/platformtools/ab;->cGP:Lcom/tencent/mm/platformtools/e;

    invoke-virtual {v3}, Lcom/tencent/mm/platformtools/e;->getValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CurrentData"

    iget-object v3, p1, Lcom/tencent/mm/platformtools/ab;->cGQ:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/model/br;->ciT:Lcom/tencent/mm/model/bu;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/tencent/mm/model/br;->ciT:Lcom/tencent/mm/model/bu;

    invoke-interface {v1}, Lcom/tencent/mm/model/bu;->tf()V

    goto/16 :goto_0
.end method
