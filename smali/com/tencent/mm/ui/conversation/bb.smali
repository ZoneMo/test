.class final Lcom/tencent/mm/ui/conversation/bb;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;

.field private final gZM:J

.field private gZN:J

.field private gZO:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 2
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/bb;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    .line 1087
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/tencent/mm/ui/conversation/bb;->gZM:J

    .line 1089
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/conversation/bb;->gZN:J

    .line 1090
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/conversation/bb;->gZO:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/bb;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1086
    iput p1, p0, Lcom/tencent/mm/ui/conversation/bb;->gZO:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/bb;)J
    .locals 2
    .parameter

    .prologue
    .line 1086
    iget-wide v0, p0, Lcom/tencent/mm/ui/conversation/bb;->gZN:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/bb;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1086
    iput-wide p1, p0, Lcom/tencent/mm/ui/conversation/bb;->gZN:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/conversation/bb;)I
    .locals 1
    .parameter

    .prologue
    .line 1086
    iget v0, p0, Lcom/tencent/mm/ui/conversation/bb;->gZO:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 4
    .parameter

    .prologue
    .line 1094
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "trigger double tab"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bb;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->m(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/conversation/bc;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/bc;-><init>(Lcom/tencent/mm/ui/conversation/bb;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1127
    const/4 v0, 0x0

    return v0
.end method
