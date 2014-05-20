.class final Lcom/tencent/mm/ui/tools/ht;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final guD:Ljava/util/regex/Pattern;


# instance fields
.field private hnH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3715
    const-string v0, ".*#.*wechat_redirect"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/tools/ht;->guD:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ht;->hnH:Ljava/lang/String;

    .line 3720
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ht;->hnH:Ljava/lang/String;

    .line 3721
    return-void
.end method

.method public static xN(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 3742
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3743
    const/4 v0, 0x0

    .line 3747
    :goto_0
    return v0

    .line 3746
    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/tools/ht;->guD:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3747
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final xM(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3724
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3725
    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "getReason fail, url is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3738
    :cond_0
    :goto_0
    return v0

    .line 3729
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ht;->hnH:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3733
    sget-object v0, Lcom/tencent/mm/ui/tools/ht;->guD:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3734
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3735
    const/4 v0, 0x2

    goto :goto_0

    .line 3738
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
