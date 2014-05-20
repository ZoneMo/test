.class public final Lcom/tencent/mm/ui/chatting/es;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ai/t;
.implements Lcom/tencent/mm/n/m;


# static fields
.field private static gNU:Ljava/util/Map;

.field private static gNs:Ljava/lang/String;


# instance fields
.field protected final bNl:Ljava/lang/String;

.field private cLI:I

.field protected final clp:Ljava/lang/String;

.field private dLa:[S

.field private dLe:Landroid/view/LayoutInflater;

.field protected dYT:Landroid/view/View$OnCreateContextMenuListener;

.field protected dYp:Lcom/tencent/mm/pluginsdk/ui/g;

.field protected gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field protected final gMj:Lcom/tencent/mm/ui/chatting/v;

.field protected gNA:Lcom/tencent/mm/ui/chatting/fg;

.field private gNB:Lcom/tencent/mm/ui/chatting/fg;

.field protected gNC:Lcom/tencent/mm/pluginsdk/ui/chat/az;

.field private gND:Lcom/tencent/mm/pluginsdk/ui/chat/az;

.field protected gNE:Lcom/tencent/mm/ui/chatting/ex;

.field private gNF:Lcom/tencent/mm/ui/chatting/ex;

.field protected gNG:Lcom/tencent/mm/ui/chatting/n;

.field private gNH:Lcom/tencent/mm/ui/chatting/n;

.field private gNI:Landroid/view/View$OnCreateContextMenuListener;

.field private gNJ:Landroid/os/Handler;

.field private gNK:J

.field private gNL:J

.field private gNM:J

.field private gNN:I

.field private gNO:I

.field private gNP:Z

.field private gNQ:Z

.field private gNR:Z

.field private gNS:Z

.field private gNT:Ljava/util/TreeSet;

.field private gNV:Ljava/util/HashMap;

.field gNW:Lcom/tencent/mm/storage/ak;

.field private gNX:Landroid/view/View$OnClickListener;

.field private gNo:[S

.field private gNp:I

.field private gNq:Ljava/util/HashSet;

.field protected final gNr:Lcom/tencent/mm/ui/chatting/lm;

.field private gNt:I

.field private final gNu:I

.field private final gNv:I

.field protected gNw:Lcom/tencent/mm/ui/chatting/ez;

.field private gNx:Lcom/tencent/mm/ui/chatting/ez;

.field protected gNy:Lcom/tencent/mm/ui/chatting/fl;

.field private gNz:Lcom/tencent/mm/ui/chatting/fl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    sput-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T49S"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T49R"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T268435505S"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T268435505R"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T1048625S"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T1048625R"

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T369098801S"

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T369098801R"

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T335544369S"

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T335544369R"

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T402653233S"

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T402653233R"

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T16777265S"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T16777265R"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T10000R"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T39S"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T39R"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T3S"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T3R"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T23S"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T23R"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T47S"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T47R"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T34S"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T34R"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T35R"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T42S"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T42R"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T37R"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T40R"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T43S"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T43R"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T48S"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T48R"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T52R"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T50R"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T50S"

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T285212721R"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T301989937S"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T301989937R"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T1S"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T1R"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T11S"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T11R"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T13S"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T13R"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T21S"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T21R"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T31S"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T31R"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T36S"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T36R"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T53R"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T53S"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T55R"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T55S"

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T57R"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T57S"

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T-1879048191R"

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T-1879048189R"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T-1879048190R"

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T-1879048188R"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T-1879048187R"

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T318767153R"

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T318767153R"

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T-1879048186R"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    const-string v1, "T-1879048186S"

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/chatting/v;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x12

    const-wide/16 v1, -0x1

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNq:Ljava/util/HashSet;

    .line 159
    iput-wide v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    .line 160
    iput-wide v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    .line 161
    iput-wide v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    .line 162
    iput v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNN:I

    .line 163
    iput v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNO:I

    .line 164
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNP:Z

    .line 165
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNQ:Z

    .line 166
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNR:Z

    .line 168
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNS:Z

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    .line 280
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cq;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lcom/tencent/mm/ui/chatting/cq;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ci;

    invoke-direct {v2, v7}, Lcom/tencent/mm/ui/chatting/ci;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ct;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/ct;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cj;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/cj;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cn;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/cn;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cm;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/cm;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ch;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/ch;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cg;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/cg;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cq;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lcom/tencent/mm/ui/chatting/cq;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ci;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Lcom/tencent/mm/ui/chatting/ci;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cq;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Lcom/tencent/mm/ui/chatting/cq;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ci;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Lcom/tencent/mm/ui/chatting/ci;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cq;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Lcom/tencent/mm/ui/chatting/cq;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ci;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Lcom/tencent/mm/ui/chatting/ci;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/do;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/do;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/di;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/di;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dh;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dh;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/df;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/df;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/de;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/de;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ej;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/ej;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/du;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/du;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dl;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dl;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cy;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/cy;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cx;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/cx;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dg;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dg;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dt;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dt;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ds;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/ds;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dk;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dk;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dj;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dj;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/eo;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/eo;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/el;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/el;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ep;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/ep;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dr;

    invoke-direct {v2, v6}, Lcom/tencent/mm/ui/chatting/dr;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dq;

    invoke-direct {v2, v5}, Lcom/tencent/mm/ui/chatting/dq;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cw;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/cw;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/em;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/em;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/en;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/en;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dq;

    invoke-direct {v2, v5}, Lcom/tencent/mm/ui/chatting/dq;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dr;

    invoke-direct {v2, v6}, Lcom/tencent/mm/ui/chatting/dr;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/eh;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/eh;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dw;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dw;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ee;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/ee;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dm;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dm;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dn;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/dn;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/er;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/er;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/eq;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/eq;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/da;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/da;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ck;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/ck;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/cl;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/cl;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    new-instance v0, Lcom/tencent/mm/storage/ak;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ak;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNW:Lcom/tencent/mm/storage/ak;

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNX:Landroid/view/View$OnClickListener;

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    .line 360
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/es;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 361
    const/16 v0, 0xd3

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNt:I

    .line 362
    invoke-virtual {p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNu:I

    .line 363
    invoke-virtual {p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNv:I

    .line 365
    new-instance v0, Lcom/tencent/mm/ui/chatting/lm;

    new-instance v1, Lcom/tencent/mm/ui/chatting/et;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/et;-><init>(Lcom/tencent/mm/ui/chatting/es;Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    new-instance v2, Lcom/tencent/mm/ui/chatting/eu;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/eu;-><init>(Lcom/tencent/mm/ui/chatting/es;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tencent/mm/ui/chatting/lm;-><init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ae;Lcom/tencent/mm/ui/chatting/lt;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNr:Lcom/tencent/mm/ui/chatting/lm;

    .line 403
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 404
    sput-object p3, Lcom/tencent/mm/ui/chatting/es;->gNs:Ljava/lang/String;

    .line 405
    invoke-static {p3}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {p4}, Lcom/tencent/mm/storage/i;->tE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    .line 411
    :goto_0
    iput-object p5, p0, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    .line 412
    iput v4, p0, Lcom/tencent/mm/ui/chatting/es;->cLI:I

    .line 413
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    .line 414
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    .line 416
    iput-object p6, p0, Lcom/tencent/mm/ui/chatting/es;->gNI:Landroid/view/View$OnCreateContextMenuListener;

    iput-object p6, p0, Lcom/tencent/mm/ui/chatting/es;->dYT:Landroid/view/View$OnCreateContextMenuListener;

    .line 417
    new-instance v0, Lcom/tencent/mm/ui/chatting/ez;

    invoke-direct {v0, p1, p3, p5}, Lcom/tencent/mm/ui/chatting/ez;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;Lcom/tencent/mm/ui/chatting/v;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNx:Lcom/tencent/mm/ui/chatting/ez;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    .line 418
    new-instance v0, Lcom/tencent/mm/ui/chatting/fl;

    invoke-direct {v0, p6, p1}, Lcom/tencent/mm/ui/chatting/fl;-><init>(Landroid/view/View$OnCreateContextMenuListener;Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNz:Lcom/tencent/mm/ui/chatting/fl;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    .line 419
    new-instance v0, Lcom/tencent/mm/ui/chatting/fg;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/chatting/fg;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNB:Lcom/tencent/mm/ui/chatting/fg;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNA:Lcom/tencent/mm/ui/chatting/fg;

    .line 420
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/az;

    invoke-direct {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gND:Lcom/tencent/mm/pluginsdk/ui/chat/az;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNC:Lcom/tencent/mm/pluginsdk/ui/chat/az;

    .line 421
    new-instance v0, Lcom/tencent/mm/ui/chatting/ex;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ex;-><init>(Lcom/tencent/mm/ui/chatting/es;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNF:Lcom/tencent/mm/ui/chatting/ex;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNE:Lcom/tencent/mm/ui/chatting/ex;

    .line 422
    new-instance v0, Lcom/tencent/mm/ui/chatting/n;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/chatting/n;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNH:Lcom/tencent/mm/ui/chatting/n;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNG:Lcom/tencent/mm/ui/chatting/n;

    .line 424
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 425
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ce;

    iget-boolean v2, p1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    iput-boolean v2, v0, Lcom/tencent/mm/ui/chatting/ce;->gJU:Z

    goto :goto_1

    .line 408
    :cond_0
    iput-object p4, p0, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/ui/ez;->bR(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->dLe:Landroid/view/LayoutInflater;

    .line 429
    return-void
.end method

.method private static B(Lcom/tencent/mm/storage/ak;)S
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 604
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 607
    :goto_0
    sget-object v3, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "T"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_1

    const-string v0, "S"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    .line 608
    if-lez v0, :cond_2

    .line 609
    int-to-short v0, v0

    .line 622
    :goto_2
    return v0

    .line 604
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 607
    :cond_1
    const-string v0, "R"

    goto :goto_1

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v0

    .line 613
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v3

    .line 615
    if-eqz v0, :cond_4

    .line 616
    if-eqz v1, :cond_3

    const/4 v2, 0x3

    :cond_3
    int-to-short v0, v2

    goto :goto_2

    .line 617
    :cond_4
    if-eqz v3, :cond_6

    .line 618
    if-eqz v1, :cond_5

    const/4 v0, 0x7

    :goto_3
    int-to-short v0, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    goto :goto_3

    .line 619
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 620
    if-eqz v1, :cond_7

    const/16 v0, 0xf

    :goto_4
    int-to-short v0, v0

    goto :goto_2

    :cond_7
    const/16 v0, 0xe

    goto :goto_4

    .line 622
    :cond_8
    if-eqz v1, :cond_9

    const/4 v0, 0x4

    :goto_5
    int-to-short v0, v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x2

    goto :goto_5
.end method

.method static synthetic Ir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/tencent/mm/ui/chatting/es;->gNs:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/tencent/mm/storage/ak;Landroid/database/Cursor;)Lcom/tencent/mm/storage/ak;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    if-nez p0, :cond_0

    .line 508
    new-instance p0, Lcom/tencent/mm/storage/ak;

    invoke-direct {p0}, Lcom/tencent/mm/storage/ak;-><init>()V

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/ak;->convertFrom(Landroid/database/Cursor;)V

    .line 511
    return-object p0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/es;Lcom/tencent/mm/pluginsdk/ui/applet/am;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tencent/mm/pluginsdk/ui/applet/am;->foS:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p1, Lcom/tencent/mm/pluginsdk/ui/applet/am;->foS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p1, Lcom/tencent/mm/pluginsdk/ui/applet/am;->foS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p1, Lcom/tencent/mm/pluginsdk/ui/applet/am;->foS:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/an;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v4, Lcom/tencent/mm/ui/chatting/ev;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/chatting/ev;-><init>(Lcom/tencent/mm/ui/chatting/es;)V

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/pluginsdk/ui/applet/an;-><init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/applet/au;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->c(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    goto :goto_0
.end method


# virtual methods
.method public final FZ()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 551
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNR:Z

    if-nez v0, :cond_6

    .line 552
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vl(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->cLI:I

    .line 554
    iget v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    if-gez v0, :cond_0

    .line 555
    iget v0, p0, Lcom/tencent/mm/ui/chatting/es;->cLI:I

    add-int/lit8 v0, v0, -0x12

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    .line 557
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ap;->ak(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "update pos fail, cursor is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/es;->setCursor(Landroid/database/Cursor;)V

    .line 587
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/es;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNo:[S

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->dLa:[S

    .line 588
    :cond_2
    invoke-super {p0}, Lcom/tencent/mm/ui/bc;->notifyDataSetChanged()V

    .line 589
    return-void

    .line 558
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNW:Lcom/tencent/mm/storage/ak;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/chatting/es;->a(Lcom/tencent/mm/storage/ak;Landroid/database/Cursor;)Lcom/tencent/mm/storage/ak;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNW:Lcom/tencent/mm/storage/ak;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNW:Lcom/tencent/mm/storage/ak;

    iget-wide v1, v1, Lcom/tencent/mm/storage/ak;->field_createTime:J

    iput-wide v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNW:Lcom/tencent/mm/storage/ak;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/chatting/es;->a(Lcom/tencent/mm/storage/ak;Landroid/database/Cursor;)Lcom/tencent/mm/storage/ak;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNW:Lcom/tencent/mm/storage/ak;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNW:Lcom/tencent/mm/storage/ak;

    iget-wide v1, v1, Lcom/tencent/mm/storage/ak;->field_createTime:J

    iput-wide v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    :cond_5
    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "update pos topCreateTime[%d] downCreateTime[%d]"

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 561
    :cond_6
    const-string v0, "MicroMsg.ChattingListAdapter"

    const-string v1, "topLoadMore[%B] downLoadMore[%B]"

    new-array v2, v6, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNP:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNQ:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNP:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNQ:Z

    if-nez v0, :cond_7

    .line 564
    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    .line 566
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vr(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    .line 567
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ap;->a(Ljava/lang/String;JJ)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNO:I

    .line 568
    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    .line 571
    :cond_7
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNP:Z

    if-eqz v0, :cond_8

    .line 572
    iput-boolean v9, p0, Lcom/tencent/mm/ui/chatting/es;->gNP:Z

    .line 573
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/ap;->k(Ljava/lang/String;J)J

    move-result-wide v2

    .line 574
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ap;->a(Ljava/lang/String;JJ)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNN:I

    .line 575
    iput-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    .line 577
    :cond_8
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNQ:Z

    if-eqz v0, :cond_9

    .line 578
    iput-boolean v9, p0, Lcom/tencent/mm/ui/chatting/es;->gNQ:Z

    .line 579
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/ap;->l(Ljava/lang/String;J)J

    move-result-wide v4

    .line 580
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ap;->a(Ljava/lang/String;JJ)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNO:I

    .line 581
    iput-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    .line 583
    :cond_9
    const-string v0, "MicroMsg.ChattingListAdapter"

    const-string v1, "query topCreateTime[%d] downCreateTime[%d], lastCreateTime[%d], topInc[%d], bottomInc[%d]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    iget-wide v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-wide v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNN:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNO:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    const-string v6, "MicroMsg.ChattingListAdapter"

    const-string v7, "count([top, down]) = %d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ap;->a(Ljava/lang/String;JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ap;->b(Ljava/lang/String;JJ)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/es;->setCursor(Landroid/database/Cursor;)V

    goto/16 :goto_1
.end method

.method protected final Ga()V
    .locals 1

    .prologue
    .line 528
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ap;->aAG()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/es;->setCursor(Landroid/database/Cursor;)V

    .line 529
    return-void
.end method

.method public final PG()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/tencent/mm/ui/chatting/es;->cLI:I

    return v0
.end method

.method public final VV()I
    .locals 2

    .prologue
    const/16 v0, 0x12

    .line 632
    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNR:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNN:I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    add-int/lit8 v1, v1, -0x12

    iput v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    goto :goto_0
.end method

.method public final XS()I
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    check-cast p1, Lcom/tencent/mm/storage/ak;

    invoke-static {p1, p2}, Lcom/tencent/mm/ui/chatting/es;->a(Lcom/tencent/mm/storage/ak;Landroid/database/Cursor;)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 951
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNJ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNJ:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ew;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ew;-><init>(Lcom/tencent/mm/ui/chatting/es;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    :cond_0
    return-void
.end method

.method public final aJi()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNP:Z

    .line 465
    return-void
.end method

.method public final aJj()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNQ:Z

    .line 469
    return-void
.end method

.method public final aJk()Z
    .locals 4

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNR:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vr(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    .line 517
    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 518
    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    .line 519
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/es;->FZ()V

    .line 520
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aJl()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 666
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNR:Z

    if-nez v2, :cond_2

    .line 667
    iget v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNp:I

    if-gtz v2, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 667
    goto :goto_0

    .line 670
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ap;->vq(Ljava/lang/String;)J

    move-result-wide v2

    .line 671
    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final aJm()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 675
    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNR:Z

    if-nez v1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v0

    .line 679
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ap;->vr(Ljava/lang/String;)J

    move-result-wide v1

    .line 680
    iget-wide v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aJn()Ljava/util/Set;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final aJo()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 817
    return-void
.end method

.method public final aJp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNS:Z

    .line 842
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    .line 843
    const-string v0, "MicroMsg.ChattingListAdapter"

    const-string v1, "disable clickListener"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNA:Lcom/tencent/mm/ui/chatting/fg;

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNC:Lcom/tencent/mm/pluginsdk/ui/chat/az;

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNE:Lcom/tencent/mm/ui/chatting/ex;

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNG:Lcom/tencent/mm/ui/chatting/n;

    .line 844
    return-void
.end method

.method public final aJq()V
    .locals 2

    .prologue
    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNS:Z

    .line 848
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    .line 849
    const-string v0, "MicroMsg.ChattingListAdapter"

    const-string v1, "enable ClickListener"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNx:Lcom/tencent/mm/ui/chatting/ez;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNz:Lcom/tencent/mm/ui/chatting/fl;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNB:Lcom/tencent/mm/ui/chatting/fg;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNA:Lcom/tencent/mm/ui/chatting/fg;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gND:Lcom/tencent/mm/pluginsdk/ui/chat/az;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNC:Lcom/tencent/mm/pluginsdk/ui/chat/az;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNF:Lcom/tencent/mm/ui/chatting/ex;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNE:Lcom/tencent/mm/ui/chatting/ex;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNH:Lcom/tencent/mm/ui/chatting/n;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNG:Lcom/tencent/mm/ui/chatting/n;

    .line 850
    return-void
.end method

.method public final ap(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 939
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 941
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-direct {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/g;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 943
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/es;->gNJ:Landroid/os/Handler;

    .line 433
    return-void
.end method

.method public final cd(J)I
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 436
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 437
    if-nez v0, :cond_0

    .line 438
    const-string v0, "MicroMsg.ChattingListAdapter"

    const-string v1, "get msg info by id %d error"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :goto_0
    return v6

    .line 442
    :cond_0
    iget-wide v7, v0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    .line 443
    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    cmp-long v0, v7, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    cmp-long v0, v7, v0

    if-lez v0, :cond_2

    .line 445
    :cond_1
    iput-wide v7, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    .line 446
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v8}, Lcom/tencent/mm/storage/ap;->l(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    .line 447
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vr(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    .line 448
    iput-boolean v9, p0, Lcom/tencent/mm/ui/chatting/es;->gNR:Z

    .line 449
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ap;->a(Ljava/lang/String;JJ)I

    move-result v0

    .line 450
    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "reset position, reload count %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    .line 452
    const-string v0, "MicroMsg.ChattingListAdapter"

    const-string v1, "reload count less than on scene, bottom not more data, try up to load more data, and reset selection, old top msg create time %d, old selection %d"

    new-array v2, v10, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/ap;->k(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    .line 454
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ap;->a(Ljava/lang/String;JJ)I

    move-result v0

    .line 459
    :goto_1
    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "set local message id, id[%d] top create time[%d] bottom create time[%d] last create time[%d] selection[%d]"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/tencent/mm/ui/chatting/es;->gNM:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v0

    .line 460
    goto/16 :goto_0

    .line 457
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNK:J

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ap;->a(Ljava/lang/String;JJ)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1
.end method

.method public final ce(J)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 791
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    const-string v2, "MicroMsg.ChattingListAdapter"

    const-string v3, "remove select item, msgId = %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 803
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/es;->ca(Ljava/lang/String;)V

    move v0, v1

    .line 804
    :goto_1
    return v0

    .line 795
    :cond_0
    const-string v2, "MicroMsg.ChattingListAdapter"

    const-string v3, "add select item, msgId = %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    .line 797
    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 798
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f070200

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_1

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/es;->ca(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 599
    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/es;->B(Lcom/tencent/mm/storage/ak;)S

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 687
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->dLa:[S

    aget-short v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNo:[S

    add-int/lit8 v2, p1, -0x1

    aget-short v1, v1, v2

    if-nez v1, :cond_2

    .line 690
    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/ak;

    .line 691
    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v3

    .line 692
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v5

    .line 697
    sub-long v7, v5, v3

    const-wide/32 v9, 0xea60

    cmp-long v2, v7, v9

    if-gez v2, :cond_b

    const/4 v2, 0x1

    .line 698
    :goto_0
    sub-long v3, v5, v3

    const-wide/32 v5, 0x2bf20

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_c

    const/4 v3, 0x1

    .line 699
    :goto_1
    if-nez v2, :cond_1

    if-eqz v3, :cond_d

    .line 700
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->dLa:[S

    const/4 v3, 0x2

    aput-short v3, v2, p1

    .line 705
    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNo:[S

    add-int/lit8 v3, p1, -0x1

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/es;->B(Lcom/tencent/mm/storage/ak;)S

    move-result v1

    aput-short v1, v2, v3

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->dLa:[S

    aget-short v1, v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNq:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    const/4 v1, 0x1

    move v2, v1

    .line 709
    :goto_3
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p0, v3, v1}, Lcom/tencent/mm/ui/chatting/es;->o(IZ)Lcom/tencent/mm/ui/chatting/ce;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNo:[S

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ce;->aJh()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, p1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->dLe:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, p2}, Lcom/tencent/mm/ui/chatting/ce;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    :cond_4
    :goto_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/cf;

    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNS:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_6
    iput v3, v1, Lcom/tencent/mm/ui/chatting/cf;->gMz:I

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/mm/pluginsdk/e/e;->b(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {p0, v3, v2}, Lcom/tencent/mm/ui/chatting/es;->o(IZ)Lcom/tencent/mm/ui/chatting/ce;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNo:[S

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ce;->aJh()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, p1

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/tencent/mm/ui/chatting/cf;->gMA:J

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/model/al;->oo()I

    move-result v3

    if-nez v3, :cond_5

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/mm/ui/chatting/cf;->gMA:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_9
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2, v1, p1, v3, v0}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V

    :cond_6
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/g;->aqQ()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/g;->aqW()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    const/high16 v3, 0x4000

    const v4, 0x3f99999a

    const v5, 0x3f99999a

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/g;->aqR()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_a
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/g;->aqS()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    const v3, 0x7f02012f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    iget v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNv:I

    iget v4, p0, Lcom/tencent/mm/ui/chatting/es;->gNu:I

    iget v5, p0, Lcom/tencent/mm/ui/chatting/es;->gNv:I

    iget v6, p0, Lcom/tencent/mm/ui/chatting/es;->gNu:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_7
    :goto_b
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->gMy:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->gMy:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    const-string v3, "qqmail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->gMy:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/g;->aqT()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->gMy:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_8
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNS:Z

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->daW:Landroid/widget/CheckBox;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->daW:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/es;->gNT:Ljava/util/TreeSet;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_9
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->eyN:Landroid/view/View;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->eyN:Landroid/view/View;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/cf;->eyN:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->gNX:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/cf;->dJ(Z)V

    .line 711
    :goto_d
    return-object p2

    .line 697
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 698
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 702
    :cond_d
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/es;->dLa:[S

    const/4 v3, 0x1

    aput-short v3, v2, p1

    goto/16 :goto_2

    .line 707
    :cond_e
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_3

    .line 709
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_10
    if-nez v1, :cond_4

    if-nez p2, :cond_4

    const-string v1, "MicroMsg.ChattingListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inflating fail, item & convertView both are null, msgtype = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSend = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_12
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v3

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/tencent/mm/ui/chatting/cf;->gMA:J

    goto/16 :goto_9

    :cond_14
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_a

    :cond_15
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_b

    :cond_16
    const/4 v2, 0x1

    goto/16 :goto_c

    :cond_17
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/cf;->dJ(Z)V

    goto :goto_d
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 628
    const/16 v0, 0x33

    return v0
.end method

.method public final isInEditMode()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/es;->gNS:Z

    return v0
.end method

.method public final nz(I)V
    .locals 5
    .parameter

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 917
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNq:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_0
    return-void
.end method

.method public final o(IZ)Lcom/tencent/mm/ui/chatting/ce;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 857
    sget-object v1, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "T"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "S"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    .line 858
    if-nez v0, :cond_0

    .line 859
    sget-object v1, Lcom/tencent/mm/ui/chatting/es;->gNU:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "T1"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v0, "S"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->gNV:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ce;

    return-object v0

    .line 857
    :cond_1
    const-string v0, "R"

    goto :goto_0

    .line 859
    :cond_2
    const-string v0, "R"

    goto :goto_1
.end method

.method public final o(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/es;->gNX:Landroid/view/View$OnClickListener;

    .line 781
    return-void
.end method

.method public final wB(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 926
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 927
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 928
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-direct {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/g;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 930
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    .line 932
    const/4 v0, 0x0

    goto :goto_0
.end method
