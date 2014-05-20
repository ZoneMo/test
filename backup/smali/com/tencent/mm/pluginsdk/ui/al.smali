.class final Lcom/tencent/mm/pluginsdk/ui/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

.field private flN:Ljava/util/ArrayList;

.field private flO:Ljava/lang/String;

.field private flP:Z


# direct methods
.method private constructor <init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/al;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/al;->flO:Ljava/lang/String;

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/al;->flP:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/al;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/al;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/al;->flO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/al;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/al;->flO:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/al;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/al;->flN:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/al;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/al;->flN:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/al;)Z
    .locals 1
    .parameter

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/al;->flP:Z

    return v0
.end method
