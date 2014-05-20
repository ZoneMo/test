.class final Lcom/tencent/mm/ui/tools/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

.field hkv:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V
    .locals 1
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/cr;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/cr;->hkv:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/cr;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/tencent/mm/ui/tools/cr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cr;->hkv:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-object p0
.end method
