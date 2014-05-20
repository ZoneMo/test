.class public final Lcom/tencent/mm/ui/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static gpp:Lcom/tencent/mm/ui/fb;


# instance fields
.field private cbj:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aFD()Lcom/tencent/mm/ui/fb;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tencent/mm/ui/fb;->gpp:Lcom/tencent/mm/ui/fb;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tencent/mm/ui/fb;

    invoke-direct {v0}, Lcom/tencent/mm/ui/fb;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/fb;->gpp:Lcom/tencent/mm/ui/fb;

    .line 42
    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/fb;->gpp:Lcom/tencent/mm/ui/fb;

    return-object v0
.end method


# virtual methods
.method public final aFE()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/mm/ui/fb;->cbj:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/fb;->cbj:Landroid/media/AudioManager;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/fb;->cbj:Landroid/media/AudioManager;

    return-object v0
.end method
