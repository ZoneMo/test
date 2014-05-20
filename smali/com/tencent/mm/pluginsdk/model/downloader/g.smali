.class public final Lcom/tencent/mm/pluginsdk/model/downloader/g;
.super Landroid/app/DownloadManager$Request;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/model/downloader/k;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private Ky:Landroid/net/Uri;

.field private bPX:Ljava/lang/String;

.field private bQa:Z

.field private dlA:Ljava/lang/String;

.field private doD:Ljava/lang/String;

.field private fiv:Ljava/lang/String;

.field private fiw:I

.field private fix:Z

.field private mFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 30
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->Ky:Landroid/net/Uri;

    .line 31
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/model/downloader/g;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/model/downloader/g;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/model/downloader/g;-><init>(Landroid/net/Uri;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final aqn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->dlA:Ljava/lang/String;

    return-object v0
.end method

.method public final aqo()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->Ky:Landroid/net/Uri;

    return-object v0
.end method

.method public final aqp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->bPX:Ljava/lang/String;

    return-object v0
.end method

.method public final aqq()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->fiw:I

    return v0
.end method

.method public final aqr()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->fix:Z

    return v0
.end method

.method public final aqs()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->bQa:Z

    return v0
.end method

.method public final aqt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->doD:Ljava/lang/String;

    return-object v0
.end method

.method public final cd(Z)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->bQa:Z

    .line 97
    return-void
.end method

.method public final ce(Z)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->fix:Z

    .line 102
    return-void
.end method

.method public final gR(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 38
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->mFileName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->fiv:Ljava/lang/String;

    return-object v0
.end method

.method public final kc(I)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->fiw:I

    .line 87
    return-void
.end method

.method public final qx(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->bPX:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ak;->sC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/g;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/compatible/g/l;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->dlA:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public final qy(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->doD:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/g;->fiv:Ljava/lang/String;

    .line 44
    return-void
.end method
