.class public Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;
.super Lcom/tencent/mm/plugin/ext/provider/ExtContentProviderBase;
.source "SourceFile"


# static fields
.field private static final dfB:Landroid/content/UriMatcher;

.field private static final dfC:[Ljava/lang/String;

.field private static final dgA:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private dgB:Ljava/lang/String;

.field private dgC:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 43
    sput-object v0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dfB:Landroid/content/UriMatcher;

    const-string v1, "com.tencent.mm.plugin.extqlauncher"

    const-string v2, "openQRCodeScan"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dfB:Landroid/content/UriMatcher;

    const-string v1, "com.tencent.mm.plugin.extqlauncher"

    const-string v2, "batchAddShortcut"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dfB:Landroid/content/UriMatcher;

    const-string v1, "com.tencent.mm.plugin.extqlauncher"

    const-string v2, "getUnreadCount"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "retCode"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dfC:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v4

    const-string v1, "count"

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tencent/mm/plugin/ext/provider/ExtContentProviderBase;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgB:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgC:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/mm/plugin/ext/provider/ExtContentProviderBase;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgB:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgC:I

    .line 58
    iput-object p1, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgB:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgC:I

    .line 60
    iput-object p3, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->context:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private o([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 167
    const-string v1, "MicroMsg.ExtControlProviderQLauncher"

    const-string v2, "getUnreadCount"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {p0, v9}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    .line 205
    :goto_0
    return-object v0

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-gtz v1, :cond_2

    .line 173
    :cond_1
    const-string v1, "MicroMsg.ExtControlProviderQLauncher"

    const-string v2, "wrong args"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    goto :goto_0

    .line 177
    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgA:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move v2, v3

    .line 179
    :goto_1
    :try_start_0
    array-length v4, p1

    if-ge v2, v4, :cond_6

    const/16 v4, 0xa

    if-ge v2, v4, :cond_6

    .line 180
    aget-object v4, p1, v2

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 181
    aget-object v4, p1, v2

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, p1, v2

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/tencent/mm/plugin/extqlauncher/b;->Mw()Lcom/tencent/mm/plugin/extqlauncher/b;

    invoke-static {}, Lcom/tencent/mm/plugin/extqlauncher/b;->Mx()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 179
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v4

    .line 189
    if-eqz v4, :cond_5

    .line 190
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, p1, v2

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 195
    :catch_0
    move-exception v2

    .line 196
    const-string v4, "MicroMsg.ExtControlProviderQLauncher"

    const-string v5, "exception in updateShortcut, %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0, v9}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    .line 198
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->close()V

    goto/16 :goto_0

    .line 192
    :cond_5
    const/4 v4, 0x2

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, p1, v2

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 204
    :cond_6
    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    move-object v0, v1

    .line 205
    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 79
    const-string v1, "MicroMsg.ExtControlProviderQLauncher"

    const-string v2, "query()"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->context:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgC:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgB:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->a(Landroid/net/Uri;Landroid/content/Context;ILjava/lang/String;)V

    .line 81
    if-nez p1, :cond_0

    .line 82
    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    .line 112
    :goto_0
    :pswitch_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->Mp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->Mq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    :cond_1
    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->ID()Z

    move-result v1

    if-nez v1, :cond_3

    .line 91
    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dft:Landroid/database/MatrixCursor;

    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->ao(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    const-string v1, "MicroMsg.ExtControlProviderQLauncher"

    const-string v2, "invalid appid ! return null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    goto :goto_0

    .line 100
    :cond_4
    iget v1, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dgC:I

    packed-switch v1, :pswitch_data_0

    .line 111
    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    goto :goto_0

    .line 102
    :pswitch_1
    const-string v1, "MicroMsg.ExtControlProviderQLauncher"

    const-string v2, "toScanQRCode"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->context:Landroid/content/Context;

    if-nez v1, :cond_5

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "BaseScanUI_select_scan_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BaseScanUI_only_scan_qrcode_with_zbar"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->context:Landroid/content/Context;

    const-string v2, "scanner"

    const-string v3, ".ui.BaseScanUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->dfC:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->fT(I)V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-direct {p0, p4}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->o([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method
